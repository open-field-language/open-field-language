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

final markdownStyleSheet = MarkdownStyleSheet(
  p: TextStyle(
    fontSize: FontSizes.body,
    color: AppColors.text,
  ),
  listBullet: const TextStyle(
    fontSize: FontSizes.body,
    fontWeight: FontWeight.bold,
  ),
  a: const TextStyle(
    color: AppColors.link,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.link,
  ),
  // blockquote: const TextStyle(
  //   color: Colors.grey,
  //   fontStyle: FontStyle.italic,
  // ),
  // code: const TextStyle(
  //   backgroundColor: Colors.grey,
  //   color: Colors.white,
  // ),
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
  // h3: const TextStyle(
  //   fontSize: FontSizes.body + 4,
  //   fontWeight: FontWeight.bold,
  // ),
  // h4: const TextStyle(
  //   fontSize: FontSizes.body + 2,
  //   fontWeight: FontWeight.bold,
  // ),
  // h5: const TextStyle(
  //   fontSize: FontSizes.body,
  //   fontWeight: FontWeight.bold,
  // ),
  // h6: const TextStyle(
  //   fontSize: FontSizes.body - 2,
  //   fontWeight: FontWeight.bold,
  // ),

  // tableBody: const TextStyle(
  //   fontSize: FontSizes.body,
  // ),
  // tableHead: const TextStyle(
  //   fontSize: FontSizes.body,
  //   fontWeight: FontWeight.bold,
  // ),
);
