import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Function answerQuestion;
  Quiz({
    super.key,
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question: questions[questionIndex]['questionText'].toString(),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answer: answer['text'],
              ansFun: () {
                answerQuestion(answer['score']);
              });
        }).toList()
      ],
    );
  }
}
