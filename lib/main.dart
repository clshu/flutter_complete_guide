import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Green', 'Orange'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Snake', 'Lion', 'Wolf'],
    },
    {
      'questionText': 'Who\'s your favorite preident?',
      'answers': ['Lincoln', 'Washington', 'Adams'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex >= _questions.length) {
        _questionIndex = 0;
      }
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              _questions[_questionIndex]['questionText'],
            ),
            ...(_questions[_questionIndex]['answers'] as List<String>).map(
              (answer) {
                return Answer(
                  title: answer,
                  clickHandler: _answerQuestion,
                );
              },
            )
            // Answer(
            //   title: 'Answer #1',
            //   clickHandler: _answerQuestion,
            // ),
            // Answer(
            //   title: 'Answer #2',
            //   clickHandler: _answerQuestion,
            // ),
            // Answer(
            //   title: 'Answer #3',
            //   clickHandler: _answerQuestion,
            // ),
          ],
        ),
      ),
    );
  }
}
