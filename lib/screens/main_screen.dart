import 'package:flutter/material.dart';

const double sizeBoxHeight = 80;

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 157, 18, 8)),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: sizeBoxHeight),
                Image.asset(
                  'assets/images/quiz_logo.png',
                  width: 300,
                  color: const Color.fromARGB(206, 255, 255, 255),
                ),
                const SizedBox(height: sizeBoxHeight),
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
                    foregroundColor: WidgetStateProperty.all<Color>(
                      Colors.white,
                    ),
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
                  label: const Text(
                    "Start Quiz",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
