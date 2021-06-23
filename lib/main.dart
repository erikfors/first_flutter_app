import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What is your favorite animal?",
      "answers": [
        {"text": "Lion", "score": 10},
        {"text": "Snake", "score": 5},
        {"text": "Rabbit", "score": 3},
        {"text": "Racoon Dog", "score": 1},
      ],
    },
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {"text": "Blue", "score": 3},
        {"text": "White", "score": 1},
        {"text": "Red", "score": 5},
        {"text": "Yellow", "score": 2},
      ],
    },
    {
      "questionText": "What is your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
        {"text": "Max", "score": 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
   

    _totalScore += score;
    print("Totals score " + _totalScore.toString());

    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz(){

    setState(() {
      _totalScore =0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
