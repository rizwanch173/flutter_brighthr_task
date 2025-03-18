import 'package:flutter/material.dart';

class ThemeProvider {
  static late BuildContext _context;

  ///ignore:use_setters_to_change_properties
  static void setup(BuildContext context) {
    _context = context;
  }

  static bool get hasDarkMode {
    var brightness = MediaQuery.of(_context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return isDarkMode;
  }

  static TextTheme get textTheme {
    return Theme.of(_context).textTheme;
  }
}
