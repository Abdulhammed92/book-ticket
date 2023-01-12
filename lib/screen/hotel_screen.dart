import 'package:book_ticket/utils/app_layout.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    print("Hotel price is ${hotel["price"]}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 20,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.orageColor,  
            
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel["image"]}"),
                )),
          ),
          const Gap(15),
          Text(
            hotel["place"],
            style: Styles.headLineStyle2.copyWith(color: Styles.kaakiColor),
          ),
          const Gap(5),
          Text(hotel["destination"],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          const Gap(8),
          Text(
            "\$${hotel["price"]} /night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kaakiColor),
          )
        ],
      ),
    );
  }
}
