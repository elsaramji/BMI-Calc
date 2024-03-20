import 'package:bmi_calc/Components/AppBar.dart';
import 'package:bmi_calc/Components/colors.dart';
import 'package:bmi_calc/data/dataType.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RusltScreen extends StatefulWidget {
  const RusltScreen({super.key});
  @override
  State<RusltScreen> createState() => _RusltScreenState();
}

class _RusltScreenState extends State<RusltScreen> {
  @override
  Widget build(BuildContext context) {
    final datapass = Provider.of<DataProv>(context);
    const double space = 30;
    const double fontSize = 25;
    return Scaffold(
      backgroundColor: background,
      appBar: Bar(),
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
                    datapass.isMan ? "Mela" : "Famele",
                    style:
                        normalFont.copyWith(fontSize: fontSize, color: textW),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: space,
                  ),
                  Text(
                    datapass.returnBmi(datapass.bmi_reslur()),
                    style:
                        normalFont.copyWith(fontSize: fontSize, color: textG),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: space,
                  ),
                  Text(
                    "Your Weight: ${datapass.weight}",
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
                    "You have ${datapass.returnBmi(datapass.bmi_reslur())} body ",
                    style:
                        normalFont.copyWith(fontSize: fontSize, color: textG),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    " body ${datapass.returnBmi(datapass.bmi_reslur())}",
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
                Navigator.of(context).pushNamed("HOME");
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
