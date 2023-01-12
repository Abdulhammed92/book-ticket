import 'dart:ffi';

import 'package:book_ticket/screen/hotel_screen.dart';
import 'package:book_ticket/screen/ticket_view.dart';
import 'package:book_ticket/utils/app_info_list.dart';
import 'package:book_ticket/utils/app_styles.dart';
import 'package:book_ticket/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        const Gap(5),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/images/img_1.png"))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Colors.grey),
                      Text(
                        "search",
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
               const  AppDoubleTextWidget(bigText: "Upcoming Flight", smallText: "View all")
              ],
            ),
          ),
       
       Gap(15),
       SingleChildScrollView(
        padding: const EdgeInsets.only(left:20, ),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: ticketList.map((
            singleTicket) => TicketView(ticket: singleTicket)).toList()
        ),
       ),
           const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, ),
            child: const  AppDoubleTextWidget(bigText: "Hotels",
             smallText: "View all")
          ) 
         ,const Gap(15),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: hotelList.map(
            (singleHotel) => HotelScreen(hotel: singleHotel )).toList(),

          )),
        ],
      ),
    );
  }
}
