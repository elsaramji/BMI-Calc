import 'package:bmi_calc/Components/AppBar.dart';
import 'package:bmi_calc/Components/Button.dart';
import 'package:bmi_calc/Components/Buttons_Selector.dart';
import 'package:bmi_calc/Components/Heghiter%20Slider.dart';
import 'package:bmi_calc/Components/Type.dart';
import 'package:bmi_calc/Components/colors.dart';
import 'package:bmi_calc/data/dataType.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    final datapass = Provider.of<DataType>(context);
    return Scaffold(
      backgroundColor: background,
      appBar: Bar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TypeCatgory(
                    backGround: datapass.isMan ? buttons : items,
                    onCall: datapass.Cahgetypetoman,
                    icon: Icons.male_outlined,
                    textData: "Male"),
                TypeCatgory(
                    onCall: datapass.Cahgetypetoweman,
                    backGround: datapass.isMan ? items : buttons,
                    icon: Icons.female_outlined,
                    textData: "Female")
              ],
            ),

            const Spacer(
              flex: 1,
            ),

            TallSelector(),
            const Spacer(
              flex: 1,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SelectorsButtons(title: "Wieght", value: "40"),
                SelectorsButtons(title: "Age", value: "15"),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            CallPage(doing: () {})
          ],
        ),
      ),
    );
  }
}
