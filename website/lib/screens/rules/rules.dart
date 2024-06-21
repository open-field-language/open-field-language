import 'package:flutter/material.dart';
import '_content.dart';
import '../../shared/bricks/layout.dart';

import '../../shared/bricks/text.dart';
import '../../shared/framework/screen.dart';

final rulesScreen = AppScreen((_) => const _Screen());

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppColumn(child: AppMarkdown(text1)),
      ],
    );
  }
}
