import 'package:flutter/cupertino.dart';

class DrawerItemModel {
  final String title;
  final IconData iconData;
  final String route;

  DrawerItemModel({
    required this.title,
    required this.iconData,
    required this.route,
  });
}

class DrawerItemData {
  final drawer = <DrawerItemModel>[
    DrawerItemModel(
      title: 'Overview',
      iconData: CupertinoIcons.square_grid_2x2_fill,
      route: '/',
    ),
    DrawerItemModel(
      title: 'Lecturer',
      iconData: CupertinoIcons.person_alt,
      route: '/lecturer-page' ,
    ),
    DrawerItemModel(
      title: 'Students',
      iconData: CupertinoIcons.person_2_alt,
      route: '/students-page' ,
    ),
    DrawerItemModel(
      title: 'Classes',
      iconData: CupertinoIcons.book_fill,
      route: '/classes',
    ),
    DrawerItemModel(
      title: 'Schedules',
      iconData: CupertinoIcons.calendar,
      route: '/schedules',
    ),
    DrawerItemModel(
      title: 'Guidelines',
      iconData: CupertinoIcons.info_circle_fill,
      route: '/guidelines',
    ),
    DrawerItemModel(
      title: 'Attendance',
      iconData: CupertinoIcons.checkmark_circle_fill,
      route: '/attendance',
    ),
    DrawerItemModel(
      title: 'Notifications',
      iconData: CupertinoIcons.bell_fill,
      route: '/notifications',
    ),
    DrawerItemModel(
      title: 'Settings',
      iconData: CupertinoIcons.settings,
      route: '/settings',
    ),
    DrawerItemModel(
      title: 'Reports',
      iconData: CupertinoIcons.doc_text_fill,
      route: '/reports',
    ),
  ];
}
