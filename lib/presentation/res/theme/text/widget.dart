import 'package:flutter_brighthr_task/presentation/res/theme/text/text_theme_variant.dart';
import 'package:flutter_brighthr_task/presentation/res/theme/text/theme_ext.dart';
import 'package:flutter/material.dart';

class AkText extends StatelessWidget {
  final String text;
  final TextVariant? variant;

  const AkText(this.text, {super.key, this.variant});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          variant == null
              ? const TextStyle()
              : context.textStyleTheme(variant!),
    );
  }
}

class AkTextSpam {
  final String text;
  final TextVariant variant;
  final List<AkTextSpam> texts;

  const AkTextSpam({
    required this.text,
    required this.variant,
    this.texts = const [],
  });
}

class AkRichText extends StatelessWidget {
  final AkTextSpam text;
  final TextVariant variant;
  final String additionalParam;

  const AkRichText({
    super.key,
    required this.text,
    required this.variant,
    required this.additionalParam,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(text: e(text));
  }

  TextSpan e(AkTextSpam akTextSpa) {
    return TextSpan(
      text: akTextSpa.text,
      children: akTextSpa.texts.map(e).toList(),
    );
  }
}
