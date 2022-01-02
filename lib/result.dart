import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final _finaleScore;
  Result(this._finaleScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Final Score: ${_finaleScore}',
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
