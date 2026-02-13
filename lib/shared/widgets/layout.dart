import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 10),
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        height: double.infinity,
        alignment: Alignment.center,
        padding: padding,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 157, 18, 8),
              Color.fromARGB(255, 198, 30, 18),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
