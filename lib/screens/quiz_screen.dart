import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/layout.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreenState();
  }
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(context) {
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
              color: const Color.fromARGB(206, 255, 255, 255),
            ),
            const SizedBox(height: 80),
            const Text(
              "Learn Flutter the fun way!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white,
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
              onPressed: () {},
              icon: const Icon(Icons.arrow_right_alt, size: 25),
              label: const Text("Start Quiz", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
