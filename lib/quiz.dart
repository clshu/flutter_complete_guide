import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({
    @required this.questionIndex,
    @required this.answerQuestion,
    @required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(
            (questions[questionIndex]['questionText'] as String),
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map(
            (answer) {
              return Answer(
                title: answer['text'],
                clickHandler: () => answerQuestion(answer['score']),
              );
            },
          ).toList(),
        ],
      ),
    );
  }
}
