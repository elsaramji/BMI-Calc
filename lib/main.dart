import 'package:bmi_calc/Components/colors.dart';
import 'package:bmi_calc/Widgets/HomePage.dart';
import 'package:bmi_calc/Widgets/ReslutScreen.dart';
import 'package:bmi_calc/data/dataType.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => DataProv(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "HOME": (context) => const AppHome(),
        "RESULT": (context) => const RusltScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(iconTheme: IconThemeData(color: textW))),
      home: const AppHome(),
    );
  }
}
