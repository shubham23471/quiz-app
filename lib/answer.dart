import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // since we are calling a function on press of the button
  Answer(this.selectHandler, this.answer);

  final Function selectHandler;
  final String answer;

  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue ,
        child: Text(answer), onPressed: selectHandler),
    );
  }
}
