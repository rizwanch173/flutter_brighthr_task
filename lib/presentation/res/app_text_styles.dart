import 'package:flutter_brighthr_task/presentation/res/app_theme.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextTheme textTheme(ColorScheme colors, BuildContext context) {
    return TextTheme(
      displayLarge: TextStyle(fontSize: context.textScaleFactor * 64),
      displayMedium: TextStyle(fontSize: context.textScaleFactor * 32),
      displaySmall: TextStyle(fontSize: context.textScaleFactor * 24),
      headlineLarge: TextStyle(fontSize: context.textScaleFactor * 18),
      headlineMedium: TextStyle(fontSize: context.textScaleFactor * 16),
      headlineSmall: TextStyle(fontSize: context.textScaleFactor * 16),
      titleLarge: TextStyle(fontSize: context.textScaleFactor * 15),
      titleMedium: TextStyle(fontSize: context.textScaleFactor * 13),
      titleSmall: TextStyle(fontSize: context.textScaleFactor * 12),
      labelLarge: TextStyle(fontSize: context.textScaleFactor * 20),
    );
  }
}
