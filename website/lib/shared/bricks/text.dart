import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:ofl_web/shared/framework/app_structure.dart';
import 'package:url_launcher/url_launcher.dart';

import '../design/styles.dart';

class AppText extends StatelessWidget {
  const AppText(this.text, {super.key, this.textAlign, this.style});

  final String text;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: style ?? AppTextStyles.normal(context),
      textAlign: textAlign,
    );
  }
}

class AppMarkdown extends StatelessWidget {
  const AppMarkdown(
    this.content, {
    super.key,
  });

  final String content;

  static const _inAppRedirectSign = '#';

  /// Converts relative URLs (from AppRoutes) to string to be referenced in markup text.
  static String redirect(String url) {
    assert(url.startsWith('/'));
    return '#$url';
  }

  @override
  Widget build(BuildContext context) {
    return Markdown(
      selectable: true,
      physics: ScrollPhysics(), // To prevent scroll on drag in mobile Safary.
      data: content,
      shrinkWrap: true,

      onTapLink: (text, url, title) async {
        if (url == null) return;
        if (url.startsWith(_inAppRedirectSign)) {
          // Remove the sign.
          url = url.substring(1);
          push(url, context);
          return;
        }
        await launchUrl(Uri.parse(url));
      },
      styleSheet: markdownStyleSheet(context),
    );
  }
}
