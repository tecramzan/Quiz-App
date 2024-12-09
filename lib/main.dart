import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: myhome(),
    );
  }
}

class myhome extends StatefulWidget {
  const myhome({super.key});

  @override
  State<myhome> createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  final _questions = [
    // {
    //   'questionText': 'What\'s your favorite color?',
    //   'text': ['Black', 'Red', 'Green', 'White'],
    // },
    // {
    //   'questionText': 'What\'s your favorite animal?',
    //   'text': ['Rabit', 'Snack', 'Elephant', 'Lion'],
    // },
    // {
    //   'questionText': 'Who\'s your favorite instructor?',
    //   'text': ['Max', 'Max Well', 'Asif Taj', 'Badar Khalil'],
    // }
    {
      'questionText': '\n What\'s your favorite color? \n',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': '\n What\'s your favorite animal? \n',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': '\n Who\'s your favorite instructor? \n',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max Well', 'score': 1},
        {'text': 'Asif Taj', 'score': 1},
        {'text': 'Badar Khalil', 'score': 1},
      ],
    },
  ];
  int _totalScore = 0;
  int _questionIndex = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {});
    _totalScore = 0;
    _questionIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Quiz App'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion)
                : Result(resultScore: _totalScore, resetHandler: _resetQuiz)
          ],
        ),
      ),
    );
  }
}
