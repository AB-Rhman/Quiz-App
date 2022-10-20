import 'package:flutter/material.dart';
import 'package:quiz_app/Quistion.dart';
import 'Answer.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA5C9CA),
      appBar: AppBar(
        backgroundColor: Color(0xFFA5C9CA),
        elevation: 0,

      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(
                Icons.quiz_rounded ,
                size: 80,
                color: Color(0xFF395B64),
              ),
              SizedBox(
                height: 20,
              ),
              Question(
              ),
              SizedBox(
                height: 20,
              ),
              Answer(

              )
            ],
          ),
        ),
      ),
    );
  }
}
