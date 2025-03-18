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
