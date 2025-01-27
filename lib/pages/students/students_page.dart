import 'package:clock_in/pages/students/students_appbar.dart';
import 'package:clock_in/shared/drawer/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentsPage extends StatefulWidget {
  const StudentsPage({super.key});

  @override
  State<StudentsPage> createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                            SizedBox(width: 5),
                            Text(
                              'eTrack',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
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
                 const StudentsAppbar(),
                  Container(
                    height: 1.2,
                    width: double.infinity,
                    color: Colors.grey.withOpacity(.3),
                  ),
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