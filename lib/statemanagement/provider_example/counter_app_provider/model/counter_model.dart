import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int value = 0;

  void incrementCounter() {
    value++;
    notifyListeners();
  }

  void decrementCounter() {
    if (value > 0) value--;
    notifyListeners();
  }

  void resetCounter() {
    value = 0;
    notifyListeners();
  }
}
