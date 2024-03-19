import 'package:bmi_calc/Components/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


//// male or  female  selector

class TypeCatgory extends StatelessWidget {
  final Color backGround;
  final IconData icon;
  final String textData;
  final VoidCallback? onCall;
  const TypeCatgory(
      {super.key,
      this.onCall,
      required this.backGround,
      required this.icon,
      required this.textData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCall,
      child: Container(
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
      ),
    );
  }
}
