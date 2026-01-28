import 'package:flutter/material.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home-screen';
  late bool isHomeScreen;

  @override
  void initState() {
    super.initState();
    isHomeScreen = activeScreen == 'home-screen';
  }

  void switchScreen() {
    setState(() {
      activeScreen = isHomeScreen ? 'question-screen' : 'home-screen';
      isHomeScreen = !isHomeScreen;
    });
  }

  void handleOnPopInvoked(bool didPop, result) {
    if (!didPop && !isHomeScreen) {
      switchScreen();
    }
  }

  @override
  Widget build(context) {
    Widget currentScreen = HomeScreen(switchScreen: switchScreen);

    if (activeScreen == 'question-screen') {
      currentScreen = const QuestionScreen();
    }

    return PopScope(
      canPop: isHomeScreen,
      onPopInvokedWithResult: handleOnPopInvoked,
      child: currentScreen,
    );
  }
}
