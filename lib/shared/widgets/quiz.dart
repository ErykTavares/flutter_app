import 'package:flutter/material.dart';
import 'package:flutter_app/data/questions.dart';
import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter_app/screens/questions_screen.dart';
import 'package:flutter_app/screens/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home-screen';
  List<String> selectedAnswers = [];
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

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'home-screen';
      isHomeScreen = true;
    });
  }

  void handleOnPopInvoked(bool didPop, result) {
    if (!didPop && !isHomeScreen) {
      switchScreen();
    }
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget currentScreen = HomeScreen(switchScreen: switchScreen);

    if (activeScreen == 'question-screen') {
      currentScreen = QuestionScreen(onSelectAnswer: chooseAnswer);
    }
    if (activeScreen == 'results-screen') {
      currentScreen = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return PopScope(
      canPop: isHomeScreen,
      onPopInvokedWithResult: handleOnPopInvoked,
      child: currentScreen,
    );
  }
}
