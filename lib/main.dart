import 'package:flutter/material.dart';
import 'package:flutter_app/screens/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

const seedColor = Color.fromARGB(255, 115, 13, 5);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: seedColor),
        appBarTheme: const AppBarTheme(backgroundColor: seedColor),
      ),
      home: Scaffold(appBar: AppBar(), body: QuizScreen()),
    );
  }
}
