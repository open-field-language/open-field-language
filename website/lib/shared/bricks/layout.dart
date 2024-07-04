import 'dart:math';

import 'package:flutter/material.dart';

import '../design/theme.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key, required this.child, this.width});

  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final basedOnScreen = MediaQuery.of(context).size.width - 20;
    final providedWidth = width ?? Sizes.textColumnWidth;
    final actualWidth = min(basedOnScreen, providedWidth);
    return SizedBox(
      width: actualWidth,
      child: child,
    );
  }
}
