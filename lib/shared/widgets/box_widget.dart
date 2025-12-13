import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  final Color color;
  final String text;

  const BoxWidget({super.key, required this.color, required this.text});

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
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
