import 'package:bmi_calc/consts/colors.dart';
import 'package:flutter/material.dart';

class Highit extends StatefulWidget {
   int hightValue=120;
  Highit({super.key});

  @override
  State<Highit> createState() => _HighitState();
}

class _HighitState extends State<Highit> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      ///margin: const EdgeInsets.all(8.0),
      decoration:
          BoxDecoration(color: items, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Height",
            style: normalFont.copyWith(
              fontSize: 20,
              color: textW,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.hightValue}",
                style: normalFont.copyWith(
                  fontSize: 25,
                  color: textW,
                ),
              ),
              Text(
                "cm",
                style: normalFont.copyWith(
                  fontSize: 14,
                  color: textW,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Slider(
              min: 60,
              max: 210,
              value: widget.hightValue.toDouble(),
              onChanged: (value) {
                setState(() {
                  widget.hightValue = value.toInt();
                });
              }),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
