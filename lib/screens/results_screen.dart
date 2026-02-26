import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/button.dart';
import 'package:flutter_app/shared/widgets/layout.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30),
            const Text('List of answers and questions'),
            const SizedBox(height: 30),
            Button(
              text: "Restart Quiz",
              onPressed: () => {},
              icon: Icons.restart_alt,
            ),
          ],
        ),
      ),
    );
  }
}
