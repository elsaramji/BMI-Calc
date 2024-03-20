import 'package:bmi_calc/Components/colors.dart';
import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  final VoidCallback doing;
  const CallPage({required this.doing});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: doing,
          style: ElevatedButton.styleFrom(
              backgroundColor: buttons,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero)),
          child: Container(
            alignment: Alignment.center,
            height: 65,
            width: double.infinity,
            child: Text(
              " Calculate Your BMI ",
              style: normalFont.copyWith(fontSize: 25, color: textW),
            ),
          ),
        ));
  }
}
