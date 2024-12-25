import 'package:flutter/material.dart';

class Providerdemo with ChangeNotifier {
  String name = 'muhammed nk';
  void changevalue() {
    name = 'value changed';
    notifyListeners();
  }
}
