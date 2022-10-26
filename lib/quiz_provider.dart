import 'package:flutter/material.dart';

class QuizProvider extends ChangeNotifier {
  int index = 0;
  int score = 0;
  List answer = [
    [
      {'answer': 'Black', 'score': 10},
      {'answer': 'white', 'score': 0},
      {'answer': 'Yellow', 'score': 0},
      {'answer': 'Red', 'score': 0},
    ],
    [
      {'answer': 'Pizza', 'score': 10},
      {'answer': 'Burger', 'score': 0},
      {'answer': 'Pasta', 'score': 0},
    ],
    [
      {'answer': 'Alahly', 'score': 10},
      {'answer': 'Zamalek', 'score': 0},
      {'answer': 'Prymids', 'score': 0},
      {'answer': 'Tanta', 'score': 0},
    ],
    [
      {'answer': 'Alahly', 'score': 0},
      {'answer': 'RealMadrid', 'score': 10},
      {'answer': 'Barcalona', 'score': 0},
    ],
    [
      {'answer': 'Salah', 'score': 10},
      {'answer': 'Benzema', 'score': 0},
      {'answer': 'Cr7', 'score': 0},
      {'answer': 'Messi', 'score': 0},
    ],
    [
      {'answer': 'Cortoua', 'score': 10},
      {'answer': 'Alisson', 'score': 0},
      {'answer': 'Mendy', 'score': 0},
    ],
  ];
  List question = [
    "What's your fav color ?",
    "What's your fav meal ?",
    "What's your fav club in Egypt ?",
    "What's your fav club in the World ?",
    "Who is the best player in the World ?",
    "Who is the best GoalKeaper in the World ?"
  ];

  changeIndex() {
    index++;
    notifyListeners();
  }

  addScore({required int newScore}) {
    score += newScore;
    notifyListeners();
  }

  restartApp() {
    score = 0;
    index = 0;
    notifyListeners();
  }
}
