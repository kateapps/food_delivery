import 'package:empiretest/app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme() {
  var baseTheme = ThemeData.from(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.main,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
  );

  return baseTheme.copyWith(
    textTheme:
        GoogleFonts.hankenGroteskTextTheme().apply(bodyColor: AppColors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
        foregroundColor: AppColors.white.withOpacity(.1),
        backgroundColor: AppColors.main,
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
