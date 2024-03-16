import 'package:bmi_calc/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class selectGen extends StatelessWidget {
  final Color backGround;
  final IconData icon;
  final String textData;
  const selectGen(
      {super.key,
      required this.backGround,
      required this.icon,
      required this.textData});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 200,
      decoration: BoxDecoration(
        color: backGround,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 100,
          ),
          Text(
            textData,
            style: GoogleFonts.kalam().copyWith(color: textW, fontSize: 18),
          )
        ],
      ),
    );
  }
}
