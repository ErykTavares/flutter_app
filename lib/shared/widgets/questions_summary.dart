import 'dart:math';

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;
  static final List<Color> contrastingColors = [
    Colors.pink,
    Colors.blue,
    Colors.deepPurple,
    Colors.amber,
  ];

  @override
  Widget build(BuildContext context) {
    final summaryList = summaryData.map((item) {
      return Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            maxRadius: 15,
            backgroundColor:
                contrastingColors[Random().nextInt(contrastingColors.length)],
            child: Text(((item['question_index'] as int) + 1).toString()),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['question'] as String,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  item['chosen_answer'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Color.fromARGB(255, 21, 133, 225),
                  ),
                ),
                Text(
                  item['correct_answer'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromARGB(255, 78, 219, 83),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }).toList();

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(spacing: 5, children: summaryList),
      ),
    );
  }
}
