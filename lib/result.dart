import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result({super.key, required this.resultScore, required this.resetHandler});
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BubbleSpecialThree(
          text: resultPhrase,
          color: resultScore >= 17 ? Colors.red : Colors.green,
          tail: false,
          isSender: false,
          textStyle: TextStyle(fontSize: 28, color: Colors.black),
        ),
        Container(
            alignment: Alignment.center,
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                resetHandler();
              },
              child: Text(
                'Reset Quiz',
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ))
      ],
    );
  }
}
