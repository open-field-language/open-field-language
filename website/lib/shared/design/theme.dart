import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const text = Color.fromARGB(255, 41, 4, 63);
  static final border = divider;
  static final logo = accent;
  static const link = Colors.blueAccent;
  static const accent = Colors.cyan;
  static final tabSecondary = Colors.cyan.shade200;
  static final bottom = const Color.fromARGB(255, 235, 253, 255);
  static const background = Colors.white;
  static final subLine = Colors.amber.shade900;

  static final divider = Colors.grey.shade200;
}

abstract class Sizes {
  static const textColumnWidth = 610.0;
  static const paddingAfterBody = 70.0;
  static const border = 2.0;
}

abstract class FontSizes {
  static const appTitle = 26.0;
  static const body = 18.0;
}

/// Choose fonts from https://fonts.google.com/
abstract class Fonts {
  static late final body = GoogleFonts.poppins(); // poppins or montserrat
  static late final headers = GoogleFonts.outfit(); // paytoneOne or rowdies
}

final appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: Fonts.body.fontFamily,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: AppColors.accent,
    backgroundColor: AppColors.background,
  ),
  // textTheme: const TextTheme(
  //         //   bodyLarge: test,
  //         //bodyMedium: test,
  //         //   bodySmall: test,
  //         //   displayLarge: test,
  //         //   displayMedium: test,
  //         //   displaySmall: test,
  //         //   headlineLarge: test,
  //         //   headlineMedium: test,
  //         //   headlineSmall: test,
  //         //labelLarge: test,
  //         // labelMedium: test,
  //         // labelSmall: test,
  //         //   titleLarge: test,
  //         //   titleMedium: test,
  //         //   titleSmall: test,
  //         // ),
  //         // appBarTheme: const AppBarTheme(
  //         //   // backgroundColor: Colors.white,
  //         //   // foregroundColor: Colors.black,
  //         //   titleTextStyle: test,
  //         //   toolbarTextStyle: test,
  //         )
  //     .apply(
  //   bodyColor: AppColors.text,

  // displayColor: Colors.blue,
);
