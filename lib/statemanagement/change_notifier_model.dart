
import 'package:flutter/material.dart';

class CounterChangeNotifier extends ChangeNotifier {
  int value = 0;

  void incrementCounter() {
    print('_incrementCounter');
    value++;
    notifyListeners();
  }

  void decrementCounter() {
    print('_decrementCounter');
    value--;
    notifyListeners();
  }

  void resetCounter() {
    print('_resetCounter');
    value = 0;
    notifyListeners();
  }
}
