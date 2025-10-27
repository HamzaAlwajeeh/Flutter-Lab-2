import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isLoggedIn = true;

  void login() {
    isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    isLoggedIn = false;
    notifyListeners();
  }
}
