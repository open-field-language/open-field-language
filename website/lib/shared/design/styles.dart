import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../../shared/design/theme.dart';

import 'border.dart';

enum AppBarTypes {
  title,
  menuSelected,
  menuClickable,
}

abstract class AppTextStyles {
  static TextStyle normal(BuildContext context) {
    final theme = Theme.of(context);
    return theme.textTheme.labelLarge!.copyWith(
      fontWeight: FontWeight.w100,
      color: AppColors.text,
      fontSize: FontSizes.body,
    );
  }

  static TextStyle tab(BuildContext context) =>
      normal(context).copyWith(fontWeight: FontWeight.w900);

  static TextStyle title(BuildContext context) => tab(context).copyWith(
        fontSize: FontSizes.appTitle,
        fontFamily: Fonts.headers.fontFamily,
      );

  static TextStyle subLine(BuildContext context) => normal(context)
      .copyWith(fontWeight: FontWeight.w600, color: AppColors.subLine);
}

abstract class ButtonStyles {
  static ButtonStyle appBarItem(BuildContext context, AppBarTypes type) {
    final textStyle = switch (type) {
      AppBarTypes.title => AppTextStyles.title(context),
      AppBarTypes.menuSelected => AppTextStyles.tab(context),
      AppBarTypes.menuClickable => AppTextStyles.normal(context),
    };

    return TextButton.styleFrom(
      disabledForegroundColor: AppColors.text,
      foregroundColor: AppColors.text,
      textStyle: textStyle,
    );
  }

  static ButtonStyle fab(BuildContext context) {
    return FilledButton.styleFrom(shape: borderedShape);
  }
}

MarkdownStyleSheet markdownStyleSheet(BuildContext context) =>
    MarkdownStyleSheet(
      blockSpacing: null,
      // blockquoteAlign: WrapAlignment.spaceBetween,
      blockquoteDecoration: null,
      blockquotePadding: null,
      checkbox: null,
      // codeblockAlign: WrapAlignment.spaceBetween,
      codeblockDecoration: null,
      codeblockPadding: null,
      del: AppTextStyles.normal(context),
      em: AppTextStyles.normal(context),
      // h1Align: WrapAlignment.spaceBetween,
      // h2Align: WrapAlignment.spaceBetween,
      // h3Align: WrapAlignment.spaceBetween,
      // h4Align: WrapAlignment.spaceBetween,
      // h5Align: WrapAlignment.spaceBetween,
      // h6Align: WrapAlignment.spaceBetween,
      h1Padding: null,
      h2Padding: null,
      h3Padding: null,
      h4Padding: null,
      h5Padding: null,
      h6Padding: null,
      horizontalRuleDecoration: null,
      img: null,
      listBulletPadding: null,
      listIndent: null,
      // orderedListAlign: WrapAlignment.spaceEvenly,
      p: AppTextStyles.normal(context),
      listBullet: AppTextStyles.normal(context),
      pPadding: null,
      strong: null,
      superscriptFontFeatureTag: null,
      tableBorder: null,
      tableHeadAlign: null,
      tableCellsPadding: null,
      tableColumnWidth: null,
      // tableVerticalAlignment: TableCellVerticalAlignment.middle,
      // textAlign: WrapAlignment.spaceBetween,
      textScaler: null,
      // unorderedListAlign: WrapAlignment.spaceBetween,
      tableCellsDecoration: null,
      a: const TextStyle(
        color: AppColors.link,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.link,
      ),
      blockquote: AppTextStyles.normal(context),
      code: AppTextStyles.normal(context),
      h1: TextStyle(
        fontSize: FontSizes.body + 8,
        fontWeight: FontWeight.bold,
        fontFamily: Fonts.headers.fontFamily,
      ),
      h2: TextStyle(
        fontSize: FontSizes.body + 4,
        fontWeight: FontWeight.bold,
        fontFamily: Fonts.headers.fontFamily,
      ),
      h3: AppTextStyles.normal(context),
      h4: AppTextStyles.normal(context),
      h5: AppTextStyles.normal(context),
      h6: AppTextStyles.normal(context),
      tableBody: AppTextStyles.normal(context),
      tableHead: AppTextStyles.normal(context),
    );
