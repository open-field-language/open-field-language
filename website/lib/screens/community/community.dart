import 'package:flutter/material.dart';
import 'package:ofl_web/screens/community/_content.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../shared/bricks/fab.dart';
import '../../shared/bricks/layout.dart';

import '../../shared/bricks/text.dart';
import '../../shared/framework/screen.dart';

final communityScreen = AppScreen((_) => const _Screen());

class _Screen extends StatelessWidget {
  const _Screen();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppColumn(
          child: AppMarkdown('$text1 $text2'),
          width: 600,
        ),
        Fab(
          callback: () => launchUrl(Uri.parse(
              'https://github.com/open-field-language/open-field-language/issues/new?assignees=&labels=community&projects=&template=add-me-to-community-.md&title=Add+me+to+community.')),
          label: 'Join',
        ),
      ],
    );
  }
}
