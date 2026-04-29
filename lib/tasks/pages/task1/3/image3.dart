import 'package:flutter/material.dart';

import '../task4/image4.dart' show LargeGrid, SmallGrid, Mosaic1, Mosaic2, Mosaic3, Mosaic4, Mosaic5, Mosaic6, Mosaic7, Mosaic8;

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
