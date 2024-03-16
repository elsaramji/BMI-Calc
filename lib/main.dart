import 'package:bmi_calc/RusltScreen.dart';
import 'package:bmi_calc/consts/colors.dart';
import 'package:bmi_calc/dataScreen.dart';
import 'package:bmi_calc/widgets/gen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "ruslt": (context) => RusltScreen(),
        "home": (context) => CollactionData(),
      },
      home: Scaffold(
        backgroundColor: background,
        body: CollactionData(),
      ),
    );
  }
}
