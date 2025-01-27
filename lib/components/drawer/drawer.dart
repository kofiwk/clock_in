/* import 'package:clock_in/components/drawer/drawer_tile.dart';
import 'package:clock_in/pages/calendar.dart';
import 'package:clock_in/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final void Function()? onTap;

  const MyDrawer({super.key, required this.onTap});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(39, 83, 71, 1),
      elevation: 0,
      shape:  const ContinuousRectangleBorder(),
      child: Column(
        children: [
          // Name
          Text(
            'eTrack',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Divider(height: 1),
          ),

          // Dashboard Tile
          MyDrawerTile(
            text: 'Dashboard', 
            iconData: CupertinoIcons.home, 
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (
                  (context) => const HomePage()
                )
              )
            ),
          ),
          const SizedBox(height: 15),
          // Calendar
          MyDrawerTile(
            text: 'Calendar', 
            iconData: CupertinoIcons.calendar, 
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (
                  (context) => const CalendarPage()
                )
              )
            ),
          ),
          const SizedBox(height: 15),
          // People
          MyDrawerTile(
            text: 'People', 
            iconData: CupertinoIcons.person_crop_circle, 
            onTap: widget.onTap,
          ),
          const SizedBox(height: 15),
          // Groups
          MyDrawerTile(
            text: 'Groups', 
            iconData: CupertinoIcons.list_bullet_below_rectangle, 
            onTap: widget.onTap,
          ),
          const SizedBox(height: 15),
          // Groups
          MyDrawerTile(
            text: 'Email', 
            iconData: CupertinoIcons.mail, 
            onTap: widget.onTap,
          ),
          const SizedBox(height: 15),
          // Data / Reports
          MyDrawerTile(
            text: 'Data/Reports', 
            iconData: CupertinoIcons.folder_circle_fill, 
            onTap: widget.onTap,
          ),
          const SizedBox(height: 15),
          // Asmin
          MyDrawerTile(
            text: 'Admin', 
            iconData: CupertinoIcons.person, 
            onTap: widget.onTap,
          ),
        ],
      ),
    );
  }
} */