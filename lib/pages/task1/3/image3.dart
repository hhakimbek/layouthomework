import 'package:flutter/material.dart';
import 'package:myhomeapp/pages/task1/3/widgets/large_grid.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic1.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic2.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic3.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic4.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic5.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic6.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic7.dart';
import 'package:myhomeapp/pages/task1/3/widgets/mosaic8.dart';
import 'package:myhomeapp/pages/task1/3/widgets/small_grid.dart';

class Image3 extends StatefulWidget {
  const Image3({super.key});

  @override
  State<Image3> createState() => _Image3State();
}

class _Image3State extends State<Image3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            LargeGrid(),
            SmallGrid(),
            Mosaic1(),
            Mosaic2(),
            Mosaic3(),
            Mosaic4(),
            Mosaic5(),
            Mosaic6(),
            Mosaic7(),
            Mosaic8(),
          ],
        ),
      ),
    );
  }
}
