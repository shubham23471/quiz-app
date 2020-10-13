import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  // class variable
  var questionIndex = 0;

  // function to wire it with buttons
  void answerQuestion() {
    // function in which we move the property that we want to be changed 
    // forces flutter to re-render UI (not the entire UI):- It calls the build again and that build the widget tree again 
    setState(() {
      questionIndex += 1;
    });

    
    print(questionIndex);
    print('Answer Choosen!');
  }

  // build method for your app
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'what\'s your favorite animal?',
      'who\'s is your favorite instructor?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Demo Quiz App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion)
          ],
        ),
      ),
    );
  }
}
