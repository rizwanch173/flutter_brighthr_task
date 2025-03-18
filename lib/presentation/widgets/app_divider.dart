import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final String? text;
  final double? thickness;

  const AppDivider({
    super.key,
    this.padding,
    this.color = const Color(0XFFDCE0E5),
    this.text,
    this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 28,
          ),
      child: Divider(
        height: 1,
        thickness: thickness ?? 0.7,
        color: color,
      ),
    );
  }
}


class AppDividerNew extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final String? text;
  final double? thickness;

  const AppDividerNew({
    super.key,
    this.padding,
    this.color = const Color(0XFFDCE0E5),
    this.text,
    this.thickness,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 20,
   
          ),
      child: Divider(
        height: 1,
        thickness: thickness ?? 0.7,
        color: color,
      ),
    );
  }
}