import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  Color mainColor = Colors.blue;

  // set changeColor(Color newColor) {
  //   mainColor = newColor;
  //   notifyListeners();
  // }

  void changeColor(Color color) {
    mainColor = color;
    notifyListeners();
  }
}
