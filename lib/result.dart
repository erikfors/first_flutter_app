import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback onPressed;

  Result(this.finalScore,this.onPressed);

  String get resultPhrase {
    var resultText = "You did it";

    if (finalScore <= 5) {
      resultText = "You Good!";
    } else if (finalScore <= 10) {
      resultText = "You Normal!";
    } else if (finalScore <= 15) {
      resultText = "You Bad!";
    } else {
      resultText = "How da fuq!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: onPressed,
            child: Text("Restart quiz"),
          ),
        ],
      ),
    );
  }
}
