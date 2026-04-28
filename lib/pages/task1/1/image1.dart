
import 'package:flutter/material.dart';
import 'package:myhomeapp/pages/task1/1/widgets/my_layout.dart';
import 'package:myhomeapp/pages/task1/1/widgets/new_screen.dart';




class ImageOne extends StatefulWidget {
  const ImageOne({super.key});

  @override
  State<ImageOne> createState() => _ImageOneState();
}

class _ImageOneState extends State<ImageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
    );
  }

}

