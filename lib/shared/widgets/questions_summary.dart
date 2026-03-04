import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    final summaryList = ListView.builder(
      shrinkWrap: true,
      itemCount: summaryData.length,
      itemBuilder: (context, index) {
        final item = summaryData[index];

        return Row(
          children: [
            Text(((item['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(item['question'] as String),
                  const SizedBox(height: 5),
                  Text(item['chosen_answer'] as String),
                  Text(item['correct_answer'] as String),
                ],
              ),
            ),
          ],
        );
      },
    );

    return Column(children: [summaryList]);
  }
}
