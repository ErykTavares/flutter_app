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

  List<Map<String, Object>> get summaryData {
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
    final totalQuestions = questions.length;
    final correctAnswers = summaryData
        .where((item) => item['chosen_answer'] == item['correct_answer'])
        .length;

    return Layout(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            const SizedBox(height: 50),
            Text(
              'You answered $correctAnswers out of $totalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 236, 195, 195),
              ),
            ),
            const SizedBox(height: 10),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 10),
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
