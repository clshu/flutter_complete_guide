import 'package:flutter/material.dart';

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
            Text(
              _questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // ...
                print('Answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
