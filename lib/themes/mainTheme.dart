import 'package:flutter/material.dart';

class MainTheme {
  static const colorPrimary = Colors.black;
  static const colorSecondary = Colors.orange;
  static const colorWhite = Colors.white;

  static ThemeData getTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: colorPrimary,
    cardColor: colorPrimary,
    scaffoldBackgroundColor: colorPrimary,
    navigationBarTheme:
        const NavigationBarThemeData(backgroundColor: colorPrimary),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(colorPrimary),
        iconColor: WidgetStatePropertyAll(colorWhite),
        foregroundColor: WidgetStatePropertyAll(colorWhite),
        overlayColor: WidgetStatePropertyAll(colorSecondary),
      ),
    ),
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: colorSecondary),
  );
}
