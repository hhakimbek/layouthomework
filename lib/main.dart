import 'package:flutter/material.dart';
import 'package:myhomeapp/pages/task1/1/image1.dart';
import 'package:myhomeapp/pages/task1/2/image2.dart';
import 'package:myhomeapp/pages/task1/3/image3.dart';
import 'package:myhomeapp/pages/task1/task4/image4.dart';
import 'package:myhomeapp/pages/task2/task2.dart';
import 'package:myhomeapp/pages/task3/my_calculator.dart';
import 'package:myhomeapp/pages/task4/settings_page.dart';
import 'package:myhomeapp/pages/task5/contacts_screen.dart';

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
      home: const ContactsScreen(),
    );
  }
}