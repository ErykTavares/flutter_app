import 'package:flutter/material.dart';
import 'package:flutter_app/data/questions.dart';
import 'package:flutter_app/shared/widgets/button.dart';
import 'package:flutter_app/shared/widgets/layout.dart';
import 'package:flutter_app/shared/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final VoidCallback onRestart;

  List<Map<String, Object>> getSummaryData() {
    return List.generate(chosenAnswers.length, (i) {
      final currentQuestion = questions[i];

      return {
        'question_index': i,
        'question': currentQuestion.text,
        'correct_answer': currentQuestion.answers[0],
        'chosen_answer': chosenAnswers[i],
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctAnswers = summaryData.where((item) {
      return item['chosen_answer'] == item['correct_answer'];
    }).length;

    return Layout(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered $correctAnswers out of $totalQuestions questions correctly!',
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            Button(
              text: "Restart Quiz",
              onPressed: onRestart,
              icon: Icons.restart_alt,
            ),
          ],
        ),
      ),
    );
  }
}
