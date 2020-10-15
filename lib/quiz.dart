import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          // creating an anonymous function to pass as paramter within the Answer() function argument
          // when the button is pressed this fuction will execute 
          return Answer(() => answerQuestion(answer['score']), 
                          answer['text']);
        }),
      ],
    );
  }
}
