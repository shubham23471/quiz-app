import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // constructor
  Question(this.questionText);
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),// 10 pixel margin around the container in all side
        child: Text(
          questionText,
          style: TextStyle(fontSize: 28),
          textAlign: TextAlign.center, // Enums: return some constant values
        ));
  }
}
 