import 'package:flutter/material.dart';

enum ThemeType {
  theme,
  darkTheme,
  goldenTheme,
}

ThemeData getTheme(ThemeType themeType) {
  final theme = ThemeData();
  switch (themeType) {
    case ThemeType.theme:
      return theme;
    case ThemeType.darkTheme:
      return theme.copyWith();
    case ThemeType.goldenTheme:
      return theme.copyWith();
  }
}
