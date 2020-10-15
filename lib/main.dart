import 'package:flutter/material.dart';
import 'package:sec2/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

// _ to make MyAppState as private class so that we can access it in this file only.

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // class variable
  var _questionIndex = 0;
  var _totalScore = 0;

  // reset everthing to restart the app
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //  if we keep this as static this throw an error
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  // function to wire it with buttons
  void _answerQuestion(int score) {
    // function to increment the questionIndex counter by 1
    // function in which we move the property that we want to be changed
    // forces flutter to re-render UI (not the entire UI):- It calls the build again and that build the widget tree again

    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      //.. do something
    }
    print('Answer Choosen!');
  }

  // build method for your app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Demo Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(
                  resultScore: _totalScore,
                  resetHandler: _resetQuiz,
                )),
    );
  }
}
