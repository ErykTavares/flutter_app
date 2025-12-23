import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/color_box_text.dart';

class ColorBox extends StatelessWidget {
  const ColorBox({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: ColorBoxText(
        text: text,
        textStyle: TextStyle(color: Colors.black87, fontSize: 20),
      ),
    );
  }
}
