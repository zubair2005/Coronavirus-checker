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
      'questionText': 'Are you experiencing a new or continous cough ?',
      'answers': [
        {'text': 'Severe', 'score': 10},
        {'text': 'Yes', 'score': 5},
        {'text': 'Mild', 'score': 3},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Are you experiencing a headache?',
      'answers': [
        {'text': 'Severe', 'score': 10},
        {'text': 'Yes', 'score': 5},
        {'text': 'Mild', 'score': 3},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'questionText': 'Are you experiencing a high temperature?',
      'answers': [
        {'text': 'Severe', 'score': 10},
        {'text': 'Yes', 'score': 5},
        {'text': 'Mild', 'score': 3},
        {'text': 'No', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey[50]),
        
        
        body: Container(
         
          
          child: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
        
        ),
      
      ),
    );
  }
}
