import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.icon,
  });

  final String text;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        alignment: Alignment.center,
        backgroundColor: WidgetStateProperty.all<Color>(
          Color.fromARGB(255, 198, 30, 18),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon, size: 25),
      label: Text(text, style: TextStyle(fontSize: 20)),
    );
  }
}
