import 'package:flutter/material.dart';
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
            ElevatedButton.icon(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                alignment: Alignment.center,
                backgroundColor: WidgetStateProperty.all<Color>(
                  Color.fromARGB(255, 198, 30, 18),
                ),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              onPressed: switchScreen,
              icon: const Icon(Icons.arrow_right_alt, size: 25),
              label: const Text("Start Quiz", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
