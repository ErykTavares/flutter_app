import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/answers_button.dart';
import 'package:flutter_app/shared/widgets/layout.dart';
import 'package:flutter_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    widget.onSelectAnswer(answer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    final answersButtonList = currentQuestion.shuffledAnswers.map(
      (item) => AnswersButton(text: item, onPressed: () => answerQuestion(item)),
    );

    return Layout(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              fontSize: 24,
              color: const Color.fromARGB(255, 236, 195, 195),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          ...answersButtonList,
        ],
      ),
    );
  }
}
