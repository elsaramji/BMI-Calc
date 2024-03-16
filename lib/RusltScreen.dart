import 'package:bmi_calc/consts/colors.dart';
import 'package:bmi_calc/dataScreen.dart';
import 'package:bmi_calc/widgets/Heghit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

CollactionData data = CollactionData();

class RusltScreen extends StatefulWidget {
  const RusltScreen({super.key});
  @override
  State<RusltScreen> createState() => _RusltScreenState();
}

class _RusltScreenState extends State<RusltScreen> {
  @override
  Widget build(BuildContext context) {
    const double space = 30;
    const double fontSize = 25;
    double bMI = data.Bmi_calc(
        tall: Highit().hightValue.toDouble(), wieght: data.wieght.toDouble());

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

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BIM CALCUTOR",
          style: normalFont.copyWith(color: textW),
        ),
        backgroundColor: background,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Text(
              "Your Result",
              style: normalFont.copyWith(fontSize: 35, color: textW),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(18.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: items,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: space,
                  ),
                  Text(
                    data.isMan ? "Mela" : "Famele",
                    style:
                        normalFont.copyWith(fontSize: fontSize, color: textW),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: space,
                  ),
                  Text(
                    returnBmi(bMI),
                    style:
                        normalFont.copyWith(fontSize: fontSize, color: textG),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: space,
                  ),
                  Text(
                    "${data.age}",
                    style: normalFont.copyWith(
                        fontSize: fontSize + 5, color: textW),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: space,
                  ),
                  Text(
                    "Normal BMI rangs:",
                    maxLines: 2,
                    style: normalFont.copyWith(
                      fontSize: fontSize - 3,
                      color: textW,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "18.5 - 25 kg/m\u00b2",
                    style: normalFont.copyWith(
                      fontSize: fontSize - 3,
                      color: textW,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: space,
                  ),
                  Text(
                    "You have ${returnBmi(bMI)} body ",
                    style:
                        normalFont.copyWith(fontSize: fontSize, color: textG),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    " body ${returnBmi(bMI)}",
                    style:
                        normalFont.copyWith(fontSize: fontSize, color: textG),
                    // textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: space,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "home");
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttons,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero)),
              child: Container(
                alignment: Alignment.center,
                height: 65,
                width: double.infinity,
                child: Text(
                  "Re Calculate Your BMI",
                  style: normalFont.copyWith(fontSize: 25, color: textW),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
