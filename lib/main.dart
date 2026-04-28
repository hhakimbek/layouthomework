import 'package:flutter/material.dart';
import 'package:myhomeapp/pages/task1/1/image1.dart';
import 'package:myhomeapp/pages/task1/2/image2.dart';
import 'package:myhomeapp/pages/task1/3/image3.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const Image3(),
    );
  }
}