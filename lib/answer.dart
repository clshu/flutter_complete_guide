import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);
  final String title;
  final Function clickHandler;

  Answer({this.title, this.clickHandler});

  @override
  Widget build(BuildContext context) {
    // final ButtonStyle style =
    // ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    var _style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
    );

    return Container(
      // width: double.infinity,

      child: ElevatedButton(
        style: _style,
        child: Text(title),
        onPressed: clickHandler,
      ),
    );
  }
}
