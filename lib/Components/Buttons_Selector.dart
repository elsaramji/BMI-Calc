import 'package:bmi_calc/Components/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectorsButtons extends StatefulWidget {
  final String title;
  final String value;
  final VoidCallback add;
  final VoidCallback munis;
  const SelectorsButtons( 
      {required this.title,
      required this.value,
      required this.add,
      required this.munis});

  @override
  State<SelectorsButtons> createState() => _SelectorsButtonsState();
}

class _SelectorsButtonsState extends State<SelectorsButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            widget.title,
            style: normalFont.copyWith(
              fontSize: 20,
              color: textW,
            ),
          ),
          Text(
            widget.value,
            style: normalFont.copyWith(
              fontSize: 25,
              color: textW,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                alignment: Alignment.center,
                onPressed: widget.add,
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                color: background,
              ),
              IconButton(
                alignment: Alignment.center,
                onPressed: widget.munis,
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
    );
  }
}
