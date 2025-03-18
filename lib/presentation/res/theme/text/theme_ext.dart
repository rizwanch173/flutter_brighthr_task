import 'package:flutter_brighthr_task/presentation/res/theme/text/text_theme_type.dart';
import 'package:flutter_brighthr_task/presentation/res/theme/text/text_theme_variant.dart';
import 'package:flutter/material.dart';

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
