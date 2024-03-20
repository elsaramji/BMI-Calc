import 'package:flutter/material.dart';

///// Provider data module
class DataProv extends ChangeNotifier {
  bool isMan = true;
  int tall = 120;
  int weight = 50;
  int age = 16;

  ////man selecte
  void Cahgetypetoman() {
    isMan = true;
    notifyListeners();
  }

  ////women selecte
  void Cahgetypetoweman() {
    isMan = false;
    notifyListeners();
  }

  ///slider value
  void slide(double val) {
    tall = val.toInt();
    notifyListeners();
  }

  //// Age increment
  void ageIncrement() {
    age++;
    notifyListeners();
  }

  //// Age deincrement
  void agedecrement() {
    age--;
    notifyListeners();
  }

  //// weidght increment
  void weidghtIncrement() {
    weight++;
    notifyListeners();
  }

  //// weidght increment
  void weidghtdecrement() {
    weight--;
    notifyListeners();
  }

  //height convertor
  double height() {
    double conv = tall / 100;
    return conv * conv;
  }

  //reslut BMi
  double bmi_reslur() {
    return weight / height();
  }

  String returnBmi(double bmi) {
    if (bmi <= 18.5) {
      return "Underweight";
    } else if (bmi <= 24.9) {
      return "Healthy weight";
    } else if (bmi <= 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }
}
