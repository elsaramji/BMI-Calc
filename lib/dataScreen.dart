import 'package:bmi_calc/consts/colors.dart';
import 'package:bmi_calc/widgets/Heghit.dart';
import 'package:bmi_calc/widgets/gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CollactionData extends StatefulWidget {
  bool isMan = true;
  int age = 18;
  int wieght = 50;
  late double bmi_reslut;

  // ignore: non_constant_identifier_names
  double Bmi_calc({required double tall, required double wieght}) {
    double tall_m = tall / 100;
    bmi_reslut = (tall_m * tall_m) / wieght;
    return bmi_reslut;
  }

  @override
  State<CollactionData> createState() => _CollactionDataState();
}

class _CollactionDataState extends State<CollactionData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        centerTitle: true,
        title: Text(
          "BMI CALCUTOR",
          style: normalFont.copyWith(color: textW),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(12.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    widget.isMan = true;
                    setState(() {});
                    print(widget.isMan);
                  },
                  child: selectGen(
                      backGround: widget.isMan ? buttons : items,
                      icon: Icons.male_outlined,
                      textData: "Male"),
                ),
                GestureDetector(
                  onTap: () {
                    widget.isMan = false;
                    setState(() {});
                    print(widget.isMan);
                  },
                  child: selectGen(
                      backGround: widget.isMan ? items : buttons,
                      icon: Icons.female_outlined,
                      textData: "Female"),
                ),
              ],
            ),
            Highit(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: items,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Wieght",
                        style: normalFont.copyWith(
                          fontSize: 20,
                          color: textW,
                        ),
                      ),
                      Text(
                        "${widget.wieght}",
                        style: normalFont.copyWith(
                          fontSize: 25,
                          color: textW,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              ++widget.wieght;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            color: background,
                          ),
                          IconButton(
                            onPressed: () {
                              --widget.wieght;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                            color: background,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 170,
                  height: 200,
                  decoration: BoxDecoration(
                    color: items,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Age",
                        style: normalFont.copyWith(
                          fontSize: 20,
                          color: textW,
                        ),
                      ),
                      Text(
                        "${widget.age}",
                        style: normalFont.copyWith(
                          fontSize: 25,
                          color: textW,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {
                              ++widget.age;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            color: background,
                          ),
                          IconButton(
                            onPressed: () {
                              --widget.age;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.minimize,
                              color: Colors.white,
                            ),
                            color: background,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  widget.bmi_reslut = widget.Bmi_calc(
                      tall: Highit().hightValue.toDouble(),
                      wieght: widget.wieght.toDouble());

                  print(widget.bmi_reslut);
                  Navigator.popAndPushNamed(context, "ruslt");
                  setState(() {});
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
                    " Calculate Your BMI ",
                    style: normalFont.copyWith(fontSize: 25, color: textW),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
