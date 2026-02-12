import 'package:flutter/material.dart';
import 'package:flutter_app/shared/widgets/anwsers_button.dart';
import 'package:flutter_app/shared/widgets/layout.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Layout(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text('The question...'),
          const SizedBox(height: 30),
          AnswersButton(onPressed: () {}, text: 'Answer 1'),
          AnswersButton(onPressed: () {}, text: 'Answer 2'),
          AnswersButton(onPressed: () {}, text: 'Answer 3'),
        ],
      ),
    );
  }
}
