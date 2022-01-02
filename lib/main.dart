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
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
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
              _questions[_questionIndex],
            ),
            Answer(
              title: 'Answer #1',
              clickHandler: _answerQuestion,
            ),
            Answer(
              title: 'Answer #2',
              clickHandler: _answerQuestion,
            ),
            Answer(
              title: 'Answer #3',
              clickHandler: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
