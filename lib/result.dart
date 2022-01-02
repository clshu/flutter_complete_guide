import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _finaleScore;
  Result(this._finaleScore);

  String get finalScore {
    return 'Final Score: ${_finaleScore}';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        finalScore,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
