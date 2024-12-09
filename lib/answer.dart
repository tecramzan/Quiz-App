import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answer;
  Function ansFun;

  Answer({super.key, required this.answer, required this.ansFun});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Container(
        margin: EdgeInsets.all(8),
        color: Colors.blue,
        height: 40,
        width: double.infinity,
        child: TextButton(
          onPressed: () => ansFun(),
          child: Text(
            answer,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
