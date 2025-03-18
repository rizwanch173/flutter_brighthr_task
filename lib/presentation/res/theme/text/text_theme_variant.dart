import 'package:flutter_brighthr_task/presentation/res/theme/text/text_theme_type.dart';
import 'package:flutter/material.dart';

enum TextVariant { headline1, headline2 }

TextThemeType getTextStyles(TextVariant textVariant) {
  switch (textVariant) {
    case TextVariant.headline1:
      return TextThemeType.fromTheme(
        lightTheme: const TextStyle(),
        darkTheme: (lightTheme) => lightTheme.copyWith(),
      );
    case TextVariant.headline2:
      return TextThemeType.fromTheme(lightTheme: const TextStyle());
  }
}
