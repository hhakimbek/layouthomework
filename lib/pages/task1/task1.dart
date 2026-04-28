
import 'package:flutter/material.dart';
import 'package:myhomeapp/pages/task1/widgets/my_layout.dart';
import 'package:myhomeapp/pages/task1/widgets/new_screen.dart';


class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
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

