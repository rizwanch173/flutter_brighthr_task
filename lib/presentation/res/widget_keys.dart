import 'package:flutter/material.dart';

class WidgetKeys {

  WidgetKeys._();

  static const String emailTextField = 'emailTextField';
  static const String passTextField = 'passTextField';
  
  static const String signUpScroll='signUpScroll';

}

extension WidgetKeyExt on String {
  Key get toKey => Key(this);
}
