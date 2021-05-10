import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Elephant', 'score': 10},
        {'text': 'Rabbit', 'score': 5},
        {'text': 'Dog', 'score': 3},
        {'text': 'Cat', 'score': 2}
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor ?',
      'answers': [
        {'text': 'Stephan', 'score': 5},
        {'text': 'Kruzz', 'score': 6},
        {'text': 'Steve', 'score': 8},
        {'text': 'Anand', 'score': 4}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {});
    print('Answer Chosen');
    _questionIndex = _questionIndex + 1;
    _totalScore += score;
  }

  void _restartQuiz() {
    _questionIndex = 0;
    _totalScore = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
