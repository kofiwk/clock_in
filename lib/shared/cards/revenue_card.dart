import 'dart:math';

import 'package:clock_in/models/bar_chart_model.dart';
import 'package:clock_in/shared/growth_indicator.dart';
import 'package:flutter/material.dart';

class RevenueCard extends StatelessWidget {
  const RevenueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(249, 249, 249, 1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey, width: .3),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Attendance',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: -.3,
                ),
              ),
              const SizedBox(width: 3),
              Row(
                children: [
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(56, 121, 104, 1),
                      borderRadius: BorderRadius.circular(3.5),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Present',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      letterSpacing: -.3,
                    ),
                  ),
                  const SizedBox(width: 13),
                  Container(
                    height: 13,
                    width: 13,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(173, 222, 52, 1),
                      borderRadius: BorderRadius.circular(3.5),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Absent',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      letterSpacing: -.3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.3),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                '400',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 8),
              GrowthIndicator(deltaChange: 42),
            ],
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: BarChartHeightedContainerWidget(
              barChartModel: BarChartModel.dummyList,
            ),
          ),
        ],
      ),
    );
  }
}

class BarChartHeightedContainerWidget extends StatefulWidget {
  final BarChartModel barChartModel;
  const BarChartHeightedContainerWidget({
    required this.barChartModel,
    super.key,
  });

  @override
  State<BarChartHeightedContainerWidget> createState() =>
      _BarChartHeightedContainerWidgetState();
}

class _BarChartHeightedContainerWidgetState
    extends State<BarChartHeightedContainerWidget> {
  BarChartModel barChart = BarChartModel(
    income: List.generate(6, (_) => const Revenue(amountPercent: 0)),
    expense: List.generate(6, (_) => const Revenue(amountPercent: 0)),
  );

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        barChart = widget.barChartModel;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() {
          barChart = BarChartModel(
            income: List.generate(
              6,
              (_) => Revenue(
                amountPercent: Random().nextInt(70) + 30,
              ),
            ),
            expense: List.generate(
              6,
              (_) => Revenue(
                amountPercent: Random().nextInt(70) + 30,
              ),
            ),
          );
        });
      },
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 8,
              right: 8,
              top: 0,
              bottom: 1.25,
              child: SizedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 0; i < 6; i++)
                      SizedBox(
                        width: 26,
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                              duration: Duration(milliseconds: (i * 50) + 155),
                              left: 0,
                              top: (100 - barChart.income[i].amountPercent)
                                  .clamp(0, 100)
                                  .toDouble(),
                              bottom: 0,
                              child: Container(
                                width: 13,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(39, 83, 71, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3.5),
                                    topRight: Radius.circular(3.5),
                                  ),
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                              duration: Duration(milliseconds: (i * 50) + 155),
                              right: 0,
                              top: (100 - barChart.expense[i].amountPercent)
                                  .clamp(0, 100)
                                  .toDouble(),
                              bottom: 0,
                              child: Container(
                                width: 13,
                                decoration: const BoxDecoration(
                                  color: Color.fromRGBO(173, 222, 52, 1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3.5),
                                    topRight: Radius.circular(3.5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 1.25,
              child: Container(
                height: .5,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                height: 3,
                width: 3,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 3,
                width: 3,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
