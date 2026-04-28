import 'package:flutter/material.dart';

import '../1/widgets/my_layout.dart';
import '../1/widgets/new_screen.dart';

class Image2 extends StatefulWidget {
  const Image2({super.key});

  @override
  State<Image2> createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              NewScreen(),
              MyLayout(layout: LayoutEnum.row, count: 1),            // Columns1(),
              MyLayout(layout: LayoutEnum.row, count: 2),            // Columns2(),
              MyLayout(layout: LayoutEnum.row, count: 3), // Columns3(),
              MyLayout(layout: LayoutEnum.row, count: 4),// Columns4(),
              MyLayout(layout: LayoutEnum.column, count: 2),// Row2(),
              MyLayout(layout: LayoutEnum.column, count: 3),// Row2(),
              MyLayout(layout: LayoutEnum.column, count: 4),// Row2(),
              MyLayout(layout: LayoutEnum.column, count: 5),// Row2(),
              MyLayout(layout: LayoutEnum.column, count: 6  ),// Row2(),
            ],
          ),
        ),
      ),
    );
  }
}
