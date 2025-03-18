import 'package:flutter/material.dart';

class TextThemeType {
  final TextStyle lightTheme;
  final TextStyle? darkTheme;

  TextThemeType({
    required this.lightTheme,
    this.darkTheme,
  });

  factory TextThemeType.fromTheme({
    required TextStyle lightTheme,
    TextStyle Function(TextStyle lightTheme)? darkTheme,
  }) {
    return TextThemeType(
      lightTheme: lightTheme,
      darkTheme: darkTheme?.call(lightTheme),
    );
  }
}

extension TextVariantExt on TextVariant {
  TextThemeType get textTheme => getTextStyles(this);
}

extension TextVariantBuildExt on BuildContext {
  TextStyle textStyleTheme(TextVariant textVariant) {
    var brightness = MediaQuery.of(this).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final themeType = getTextStyles(textVariant);

    if (isDarkMode) {
      return themeType.darkTheme ?? const TextStyle();
    }

    return themeType.lightTheme;
  }
}

enum TextVariant {
  headline1,
  headline2,
}

TextThemeType getTextStyles(TextVariant textVariant) {
  switch (textVariant) {
    case TextVariant.headline1:
      return TextThemeType.fromTheme(
        lightTheme: const TextStyle(),
        darkTheme: (lightTheme) => lightTheme.copyWith(),
      );
    case TextVariant.headline2:
      return TextThemeType.fromTheme(
        lightTheme: const TextStyle(),
      );
  }
}
