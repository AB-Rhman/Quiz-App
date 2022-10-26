import 'quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Question extends StatelessWidget {
  Question();

  @override
  Widget build(BuildContext context) {
    return Provider.of<QuizProvider>(context).index <
            Provider.of<QuizProvider>(context).question.length
        ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              Provider.of<QuizProvider>(context)
                  .question[Provider.of<QuizProvider>(context).index],
              style: TextStyle(
                fontSize: 27,
                color: Color(0xFFE7F6F2),
              )),
        )
        : Container();
  }
}
