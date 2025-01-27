import 'package:clock_in/pages/attendace/attendance_page.dart';
import 'package:clock_in/pages/classes/classes_page.dart';
import 'package:clock_in/pages/guidelines/guidelines_page.dart';
import 'package:clock_in/pages/home.dart';
import 'package:clock_in/pages/lecturer/lecturer_page.dart';
import 'package:clock_in/pages/notifications/notifications_page.dart';
import 'package:clock_in/pages/reports/reports_page.dart';
import 'package:clock_in/pages/schedules/schedules_page.dart';
import 'package:clock_in/pages/settings/settings_page.dart';
import 'package:clock_in/pages/students/students_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/lecturer-page',
      builder: (context, state) => const LecturerPage(),
    ),
    GoRoute(
      path: '/students-page',
      builder: (context, state) => const StudentsPage(),
    ),
    GoRoute(
      path: '/classes',
      builder: (context, state) => const ClassesPage(),
    ),
    GoRoute(
      path: '/schedules',
      builder: (context, state) => const SchedulesPage(),
    ),
    GoRoute(
      path: '/guidelines',
      builder: (context, state) => const GuidelinesPage(),
    ),
    GoRoute(
      path: '/attendance',
      builder: (context, state) => const AttendancePage(),
    ),
    GoRoute(
      path: '/notifications',
      builder: (context, state) => const NotificationsPage(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
    GoRoute(
      path: '/reports',
      builder: (context, state) => const ReportsPage(),
    ),
  ]
);
