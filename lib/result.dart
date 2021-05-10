import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore, this.restartQuiz);

  String get resultPharse {
    var resultText = 'You did it';
    if (resultScore <= 8)
      resultText = 'You are awesome and Innocent';
    else if (resultScore <= 12)
      resultText = 'You are pretty likeable';
    else if (resultScore <= 18) resultText = 'You are Strange !!!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPharse,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          TextButton(
            onPressed: restartQuiz,
            child: Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
