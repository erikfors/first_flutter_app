import 'package:flutter/cupertino.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          (questions[questionIndex]["questionText"] as String),
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer["text"] as String);
        }),
      ],
    );
  }
}
