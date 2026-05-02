import 'package:flutter/material.dart';
import 'package:myhomeapp/pages/calculator_app.dart';
import 'package:myhomeapp/pages/image_with_gradient.dart';
import 'package:myhomeapp/pages/insta_register.dart';
import 'package:myhomeapp/pages/splash_screen.dart';
import 'package:myhomeapp/pages/split_login.dart';
import 'package:myhomeapp/pages/split_screen.dart';
import 'package:myhomeapp/pages/test.dart';
import 'package:myhomeapp/pages/text_form_field_example.dart';
import 'package:myhomeapp/pages/text_form_field_example2.dart';
import 'package:myhomeapp/tasks/stl/my_stl.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplitLogin(),
    );
  }
}