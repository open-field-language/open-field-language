import 'package:flutter/material.dart';
import '../shared/bricks/fab.dart';
import '../shared/bricks/layout.dart';
import '../shared/framework/app_structure.dart';

import '../shared/bricks/image.dart';
import '../shared/bricks/text.dart';
import '../shared/framework/screen.dart';

late final homeScreen = AppScreen((_) => const _Screen());

const _teamLink = 'team';

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            _Text1(),
            AppImage(300, 'images/home/learning-kids-with-mother.png'),
          ],
        ),
        SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            AppImage(300, 'images/home/learning-kids-with-father.jpg'),
            _Text2(),
          ],
        ),
        SizedBox(height: 30),
        Fab(
          callback: () => push(AppRoutes.community, context),
          label: 'Explore Toys',
        ),
      ],
    );
  }
}

class _Text1 extends StatelessWidget {
  const _Text1();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      child: AppMarkdown('''
# Welcome to Open Field Language!

\v

TODO
'''),
    );
  }
}

class _Text2 extends StatelessWidget {
  const _Text2();

  @override
  Widget build(BuildContext context) {
    return AppColumn(
      child: AppMarkdown(
        '''
TODO

&nbsp;

[Our Team]($_teamLink) includes educators, psychologists,
designers, software engineers and parents.''',
        onTapLink: {
          _teamLink: () => push(AppRoutes.rules, context),
        },
      ),
    );
  }
}
