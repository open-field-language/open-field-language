import 'package:flutter/material.dart';
import '../../shared/bricks/layout.dart';

import '../../shared/bricks/text.dart';
import '../../shared/framework/screen.dart';
import '_content.dart';

final participateScreen = AppScreen((_) => const _Screen());

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return AppColumn(child: AppMarkdown(text1));
  }
}
