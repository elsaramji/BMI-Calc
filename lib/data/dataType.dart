import 'package:flutter/material.dart';



///// Provider data module
class DataType extends ChangeNotifier {
  bool isMan = true;
  int tall = 120;
  void Cahgetypetoman() {
    isMan = true;
    notifyListeners();
  }

  void Cahgetypetoweman() {
    isMan = false;
    notifyListeners();
  }

  void slide(double val) {
    tall = val.toInt();
    notifyListeners();
  }
}
