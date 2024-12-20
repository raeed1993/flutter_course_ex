import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int value = 0;

  void incrementCounter() {
    print('incrementCounter');
    value++;
    notifyListeners();
  }

  void decrementCounter() {
    print('decrementCounter');
    if (value > 0) value--;
    notifyListeners();
  }

  void resetCounter() {
    print('resetCounter');
    value = 0;
    notifyListeners();
  }
}

