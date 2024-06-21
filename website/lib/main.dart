import 'package:flutter/material.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';

import 'screens/participate/participate.dart';
import 'screens/rules/rules.dart';
import 'shared/design/theme.dart';
import 'screens/home/home.dart';
import 'screens/community/community.dart';
import 'shared/framework/screen.dart';
import 'shared/framework/scaffold.dart';

final _screens = <String, AppScreen>{
  AppRoutes.home: homeScreen,
  AppRoutes.community: communityScreen,
  AppRoutes.rules: rulesScreen,
  AppRoutes.participate: participateScreen,
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
