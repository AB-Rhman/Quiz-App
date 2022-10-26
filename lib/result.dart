import 'quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Your Score is ...',
          style: TextStyle(
              color: Color(0xFF395B64),
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 18),
        Text(
          '${context.read<QuizProvider>().score}',
          style: TextStyle(
              color: Color(0xFF395B64),
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            context.read<QuizProvider>().restartApp();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFF395B64),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Restart the app ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.refresh,
                    size: 33,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
