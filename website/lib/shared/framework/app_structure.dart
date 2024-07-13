import 'package:flutter/material.dart';

/// Not using enum, because some routes may be dynamic.
class AppRoutes {
  static const String home = '/';
  static const String practicesPeople = '/practices';
  static const String practicesOrgs = '/practices/orgs';
  static const String practicesMethodologies = '/practices/methodologies';
  static const String participate = '/participate';
}

const kExperiments = bool.fromEnvironment('experiments', defaultValue: false);

class FeatureFlags {
  // static const bool someFeature = kExperiments;
}

class AppMenuItem {
  const AppMenuItem(this.routes, this.label);

  final List<String> routes;
  final String label;
}

const appMenu = [
  AppMenuItem([AppRoutes.home], 'Home'),
  AppMenuItem(
    [
      AppRoutes.practicesPeople,
      AppRoutes.practicesOrgs,
      AppRoutes.practicesMethodologies,
    ],
    'Practices',
  ),
  AppMenuItem([AppRoutes.participate], 'Participate'),
];

int menuIndexByRoute(String route) {
  final result = appMenu.indexWhere((e) => e.routes.contains(route));
  if (result == -1) {
    throw Exception('Route $route not found in appMenu');
  }
  return result;
}

void push(String route, BuildContext context) {
  Navigator.of(context).pushNamed(route);
}
