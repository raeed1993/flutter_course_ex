import 'package:flutter/material.dart';

class CounterSelectorModel with ChangeNotifier {
  int valueLogin = 0;
  int valueLogout = 0;

  void login() {
    print('login');
    valueLogin++;
    notifyListeners();
  }

  void logout() {
    print('logout');
    valueLogout++;
    notifyListeners();
  }
}
