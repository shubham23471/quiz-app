import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function resetHandler;
  Result({this.resultScore, this.resetHandler});

  // implementing a getter
  // getter like a method that never receive any arguments
  String get resultPhasre {
    var resultText;
    if (resultScore < 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'you are Likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'you are a bad person';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhasre,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          // button without the backgroud
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
