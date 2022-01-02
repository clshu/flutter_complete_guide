import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  final _style = ButtonStyle(
    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
  );

  Result({
    this.totalScore,
    this.resetQuiz,
  });

  String get finalScore {
    return 'Final Score: ${totalScore}';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            finalScore,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('Reset'),
            style: _style,
          )
        ],
      ),
    );
  }
}
