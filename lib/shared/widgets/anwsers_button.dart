import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size.fromWidth(double.infinity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      ),
      child: Text(text, style: TextStyle(fontWeight: FontWeight.w700)),
    );
  }
}
