import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.infinity,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 10),
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 40,
        children: [
          Image.asset('assets/images/quiz_logo.png', width: 300, height: 300),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
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
            onPressed: () => {},
            child: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
