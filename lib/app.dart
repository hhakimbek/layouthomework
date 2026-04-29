import 'package:flutter/material.dart';
import 'package:myhomeapp/pages/calculator_app.dart';
import 'package:myhomeapp/pages/splash_screen.dart';
import 'package:myhomeapp/pages/split_screen.dart';
import 'package:myhomeapp/tasks/stl/my_stl.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorApp(),
    );
  }
}