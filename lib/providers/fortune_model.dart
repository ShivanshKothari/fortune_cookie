import 'dart:math';
import 'package:flutter/material.dart';

class FortuneModel with ChangeNotifier {
  String _currentFortune = "Press the button";

  final _fortuneList = [
    "You will not win right now",
    "You may not win right now",
    "You might win the next time",
    "You may not be so worried",
    "You will win this time! 😎"
  ];

  String get currentFortune => _currentFortune;

  void fortuneUpdate() {
    _currentFortune = _getRandomFortune();
    notifyListeners();
  }

  String _getRandomFortune() {
    var random = Random();
    return _fortuneList[random.nextInt(_fortuneList.length)];
  }
}
