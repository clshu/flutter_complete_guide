import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What\'s your favarite color?',
    //   'What\'s your favorite animal?',
    // ];

    void answerQuestion() {
      print('Answer Question #1');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The questions!'),
            ElevatedButton(
              child: Text('Answer #1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer #2'),
              onPressed: () => print('Answer Question #2'),
            ),
          ],
        ),
      ),
    );
  }
}
