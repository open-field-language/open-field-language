import 'package:flutter/material.dart';

/// Not using enum, because some routes may be dynamic.
class AppRoutes {
  static const String home = '/';
  static const String community = '/community';
  static const String rules = '/rules';
  static const String participate = '/contribute';
}

const kExperiments = bool.fromEnvironment('experiments', defaultValue: false);

class FeatureFlags {
  // static const bool exploreScreen = kExperiments;
}

class AppMenuItem {
  const AppMenuItem(this.route, this.label);

  final String route;
  final String label;
}

const appMenu = [
  AppMenuItem(AppRoutes.home, 'Home'),
  AppMenuItem(AppRoutes.community, 'Community'),
  AppMenuItem(AppRoutes.rules, 'Rules'),
  AppMenuItem(AppRoutes.participate, 'Participate'),
];

void push(String route, BuildContext context) {
  Navigator.of(context).pushNamed(route);
}
