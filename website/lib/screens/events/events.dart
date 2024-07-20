import 'package:flutter/material.dart';
import '../../shared/bricks/fab.dart';
import '../../shared/bricks/layout.dart';
import '../../shared/framework/app_structure.dart';

import '../../shared/bricks/text.dart';
import '../../shared/framework/screen.dart';
import '_events.dart';

late final eventsScreen = AppScreen((_) => const _Screen());

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppMarkdown('$headerText'),
          Fab(
            callback: () => push(AppRoutes.participate, context),
            label: 'Add an Event',
          ),
          SizedBox(height: 20),
          AppMarkdown('There are no future events registered.'),
        ],
      ),
    );
  }
}
