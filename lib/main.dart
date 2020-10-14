import 'package:flutter/material.dart';
import './question.dart';
import 'package:sec2/answer.dart';

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
  //  if we keep this as static this throw an error
  final questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'what\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'who\'s is your favorite instructor?',
        'answers': ['shubham', 'Max', 'Ron', 'Alice']
      }
    ];

  // function to wire it with buttons
  void _answerQuestion() {
    
    // function to increment the questionIndex counter by 1
    // function in which we move the property that we want to be changed
    // forces flutter to re-render UI (not the entire UI):- It calls the build again and that build the widget tree again
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    if (_questionIndex < questions.length) {
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
        body: _questionIndex < questions.length ? Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion), 
          ],
        ): 
        Center(child:  Text('Quiz Completed'),),
      ),
    );
  }
}
