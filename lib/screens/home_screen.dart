import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/button.dart';
import 'package:flutter_app/shared/widgets/layout.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.switchScreen});

  final VoidCallback switchScreen;

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz_logo.png',
              width: 300,
              color: const Color.fromARGB(255, 236, 195, 195),
            ),
            const SizedBox(height: 80),
            Text(
              "Learn Flutter the fun way!",
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(255, 236, 195, 195),
              ),
            ),
            const SizedBox(height: 30),
            Button(
              text: "Start Quiz",
              onPressed: switchScreen,
              icon: Icons.arrow_right_alt,
            ),
          ],
        ),
      ),
    );
  }
}
