import 'package:clock_in/shared/appbar/appbar_widget.dart';
import 'package:clock_in/shared/dashboard/dashboard_content.dart';
import 'package:clock_in/shared/drawer/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                  color: const Color.fromRGBO(2, 34, 19, 1),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                         padding: const EdgeInsets.only(left: 30, top: 20),
                         child: const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.graph_square_fill,
                              color: Color.fromRGBO(173, 222, 52, 1)
                            ),
                            SizedBox(width: 10),
                            Text(
                              'eTrack',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -.5,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        height: 1,
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 30, right: 30, top: 22),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.12),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      
                      const SizedBox(height: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only( right: 10.0),
                          child: DrawerWidget(
                            onTap: () {
                              setState(() {
                                
                              });
                            }
                          ),
                        )
                      )
                    ],
                  ),
                ),
              ]
              )
            ),
            Expanded(
              flex: 7,
              child: Column(
                children: [
                  const AppbarWidget(),
                   Container(
                    height: 1.2,
                    width: double.infinity,
                    color: Colors.grey.withOpacity(.3),
                  ),
                  const Expanded(child: DashboardContent())
                ],
              ),
              
            ),
            /* Expanded(
              flex: 2,
              child: Container(
                color: Colors.blueAccent,
              )
            ) */
            
          ],
        ),
      ),
    );
  }
}