import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    return BubbleSpecialThree(
      text: question,
      color: Colors.white,
      tail: true,
      isSender: false,
      textStyle: TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
    );
    // Container(
    //   alignment: Alignment.center,
    //   height: 150,
    //   width: 200,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.only(
    //       bottomRight: Radius.elliptical(200, 100),
    //       topLeft: Radius.elliptical(100, 100),
    //       topRight: Radius.elliptical(100, 80),
    //       bottomLeft: Radius.elliptical(100, 0),
    //     ),
    //     color: Colors.white,
    //   ),
    //   margin: EdgeInsets.all(10),
    //   padding: EdgeInsets.all(15),
    //   child: Center(
    //     child: Text(
    //       question,
    //       style: TextStyle(
    //           fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // );
  }
}
