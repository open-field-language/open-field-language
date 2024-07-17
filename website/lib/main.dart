import 'package:flutter/material.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';

import 'screens/events/events.dart';
import 'screens/participate/participate.dart';
import 'shared/design/theme.dart';
import 'screens/home/home.dart';
import 'screens/practices/practices.dart';
import 'shared/framework/screen.dart';
import 'shared/framework/scaffold.dart';

final _screens = <String, AppScreen>{
  AppRoutes.home: homeScreen,
  AppRoutes.practicesPeople: practicesScreen,
  AppRoutes.practicesOrgs: practicesOrgsScreen,
  AppRoutes.practicesMethodologies: practicesMethodologiesScreen,
  AppRoutes.participate: participateScreen,
  AppRoutes.events: eventsScreen,
};

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Field Language',
      theme: appTheme,
      initialRoute: AppRoutes.home,
      // Using this instead of [routes] to turn off animation.
      onGenerateRoute: (settings) {
        final route = settings.name ?? AppRoutes.home;
        return PageRouteBuilder(
          pageBuilder: (context, __, ___) =>
              AppScaffold(route, _screens[route] ?? homeScreen),
          transitionsBuilder: (_, __, ___, child) => child,
          settings: settings,
        );
      },
    );
  }
}
