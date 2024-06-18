import 'package:flutter/material.dart';
import '../shared/bricks/layout.dart';

import '../shared/bricks/image.dart';
import '../shared/bricks/text.dart';
import '../shared/framework/screen.dart';

final communityScreen = AppScreen((_) => const _Screen());

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppColumn(
          width: 400,
          child: AppMarkdown('''
# Our Team
TODO
                      '''),
        ),
        SizedBox(width: 20),
        AppImage(280, 'images/team/team.jpg'),
        AppColumn(
          child: AppMarkdown(
            '''
TODO
''',
          ),
        ),
      ],
    );
  }
}
