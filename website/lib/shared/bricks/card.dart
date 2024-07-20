import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../design/theme.dart';

class AppCard extends StatelessWidget {
  const AppCard({required this.child, this.link});

  final Widget child;
  final Uri? link;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: AppColors.card,
        child: child,
      ),
    );
  }
}
