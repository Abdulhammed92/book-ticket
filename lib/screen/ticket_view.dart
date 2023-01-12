import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/widgets/column_layout.dart';
import 'package:book_ticket/widgets/layout_builder_widget.dart';
import 'package:book_ticket/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getSize(context);
    return SizedBox(
        width: Size.width * 0.75,
        height: AppLayout.getHeight(167),
        child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(
            children: [
              // showin the blue part of the card
              Container(
                decoration: BoxDecoration(
                  color: isColor ==null? Color(0xFF526799):Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(AppLayout.getHeight(21)),
                    topLeft: Radius.circular(AppLayout.getHeight(16)),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticket["from"]["code"],
                          style: isColor == null? Styles.headLineStyle3
                              .copyWith(color: Colors.white):Styles.headLineStyle3,
                                        ),
                        Expanded(child: Container()),
                        ThickContainer(isColor: true,),
                        Expanded(
                            child: Stack(children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: AppLayoutBuilderWidget(sections: 6, )
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color:isColor == null? Colors.white :Color(0xFF8ACCF7),
                              ),
                            ),
                          ),
                        ])),
                        ThickContainer(isColor: true,),
                        Expanded(child: Container()),
                        Text(
                          ticket["to"]["code"],
                          style: isColor ==null? Styles.headLineStyle3
                              .copyWith(color: Colors.white):Styles.headLineStyle3,
                        ),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.GetWidth(100),
                          child: Text(ticket["from"]["name"],
                              style:isColor == null?  Styles.headLineStyle4
                                  .copyWith(color: Colors.white):Styles.headLineStyle4),
                        ),
                        Text(
                          ticket["flying_time"],
                          style: isColor ==null? Styles.headLineStyle4
                              .copyWith(color: Colors.white):Styles.headLineStyle4,
                        ),
                        SizedBox(
                          width: AppLayout.GetWidth(100),
                          child: Text(ticket["to"]["name"],
                              textAlign: TextAlign.end,
                              style: isColor ==null? Styles.headLineStyle4
                                  .copyWith(color: Colors.white):Styles.headLineStyle4),
                        ),
                      ],
                    )
                  ],
                ),
              )
              // showing the red part of the card
              ,

              Container(
                color: isColor == null? Styles.orageColor:Colors.white,
                child: Row(children: [
                  SizedBox(
                    height: AppLayout.getHeight(21),
                    width: AppLayout.GetWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)))),
                  ),
                  Expanded(
                      child: Padding(
                    padding:const  EdgeInsets.all(12.0),
                    child: AppLayoutBuilderWidget(sections: 6,)
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.GetWidth(10),
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color:isColor ==null? Colors.white:Colors.grey.shade300,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)))),
                  )
                ]),
              ),
              Container(
                decoration: BoxDecoration(
                  color: isColor == null? Styles.orageColor:Colors.white,
                  borderRadius:  BorderRadius.only(
                    bottomRight: Radius.circular(isColor == null? 19:0),
                    bottomLeft: Radius.circular(isColor == null? 21:0),
                  ),
                ),
                padding: const EdgeInsets.only(
                    left: 16, top: 10, right: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: ticket["date"], 
                        secondText: "Date", alignment: CrossAxisAlignment.start, 
                        isColor: isColor
                        ),
                        AppColumnLayout(firstText: ticket["departure_time"], 
                        secondText: "Departure time", alignment: CrossAxisAlignment.center, 
                        isColor: isColor
                        ),
                         AppColumnLayout(firstText: ticket["number"].toString(), 
                        secondText: "Number", alignment: CrossAxisAlignment.end, 
                        isColor: isColor)
                      
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
