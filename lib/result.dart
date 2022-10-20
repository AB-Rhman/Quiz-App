import 'quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${context.read<QuizProvider>().score}',
          style: TextStyle(
              color: Color(0xFF395B64), fontSize: 50, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            context.read<QuizProvider>().restartApp();
          },
          child: Text(
            'Restart the app ',
            style: TextStyle(
                color: Colors.white ,fontSize: 33, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
