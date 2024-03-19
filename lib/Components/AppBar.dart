import 'package:bmi_calc/Components/colors.dart';
import 'package:flutter/material.dart';

class Bar extends AppBar {
  @override
  bool? get centerTitle => true;
  @override
  Color? get backgroundColor => background;
  @override
  Widget? get title => Text(
        "BMI CAlClATOR",
        style: normalFont.copyWith(
          fontSize: 20,
          color: textW,
        ),
      );
}
