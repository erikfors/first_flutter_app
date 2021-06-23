import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answerText; 

  Answer(this.answerQuestion,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
              child: Text(
                answerText,
              ),
              onPressed: answerQuestion,
            ),
    );
  }
}