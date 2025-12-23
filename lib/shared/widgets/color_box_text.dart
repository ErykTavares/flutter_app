import 'package:flutter/material.dart';

class ColorBoxText extends StatelessWidget {
  const ColorBoxText({
    super.key,
    required this.text,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 20),
    this.textAlign = TextAlign.center,
  });

  final String text;
  final TextStyle textStyle;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textStyle, textAlign: textAlign);
  }
}
