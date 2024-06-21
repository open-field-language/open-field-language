import 'package:flutter/material.dart';
import '../../shared/bricks/fab.dart';
import '../../shared/bricks/layout.dart';
import '../../shared/framework/app_structure.dart';

import '../../shared/bricks/image.dart';
import '../../shared/bricks/text.dart';
import '../../shared/framework/screen.dart';
import '_content.dart';

late final homeScreen = AppScreen((_) => const _Screen());

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            AppColumn(child: AppMarkdown(text1)),
            AppImage(280, 'images/home/lavender.jpg'),
          ],
        ),
        AppColumn(child: AppMarkdown(text2)),
        SizedBox(height: 30),
        Fab(
          callback: () => push(AppRoutes.community, context),
          label: 'Join Community',
        ),
      ],
    );
  }
}
