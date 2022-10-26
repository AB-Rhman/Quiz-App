import 'quiz_provider.dart';
import 'result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Answer extends StatefulWidget {
  Answer();

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Provider.of<QuizProvider>(context).index <
            Provider.of<QuizProvider>(context).answer.length
        ? Column(
            children: [
              ...Provider.of<QuizProvider>(context)
                  .answer[Provider.of<QuizProvider>(context).index]
                  .map((e) {
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFF395B64)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                    onPressed: () {
                      context
                          .read<QuizProvider>()
                          .addScore(newScore: e['score']);
                      context.read<QuizProvider>().changeIndex();
                    },
                    child: Text(
                      (e['answer']),
                      style: TextStyle(color: Color(0xFFE7F6F2), fontSize: 20),
                    ),
                  ),
                );
              })
            ],
          )
        : Result();
  }
}
