import 'package:clock_in/shared/cards/farmers_card.dart';
import 'package:clock_in/shared/cards/revenue_card.dart';
import 'package:clock_in/shared/cards/water_card.dart';
import 'package:clock_in/shared/dashboard/date_widget.dart';
import 'package:flutter/material.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DateWidget(),
          SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: Row(
              children: [
                FarmersCard(),
                SizedBox(width: 20),
                WaterCard(
                  heading: "Today's Check-ins", 
                  deltaChange: 27, 
                  amount: '200'
                ),
                SizedBox(width: 20),
                WaterCard(
                  heading: 'Absent Alert', 
                  deltaChange: 40, 
                  amount: '15'
                )
              ],
            ),
          ),
          SizedBox(height: 14),
          Expanded(
            child: Row(
              children: [
                Expanded(child: RevenueCard()),
                SizedBox(width: 14),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: FarmersCard()
                      )
                    ],
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
