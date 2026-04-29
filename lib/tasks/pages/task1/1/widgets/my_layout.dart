import 'package:flutter/cupertino.dart';

import '../../../../widgets/my_container.dart';


class MyLayout extends StatelessWidget {
  final LayoutEnum layout;
  final int count;
  const MyLayout({super.key, required this.layout, required this.count});

  @override
  Widget build(BuildContext context) {
    return layout==LayoutEnum.column?Column(
      spacing: 20,
      children: [
        for(int i=1;i<=count;i++) Expanded(child: MyContainer())
      ],
    ):Row(
      spacing: 20,
      children: [
        for(int i=1;i<=count;i++) Expanded(child: MyContainer())
      ],
    );;
  }
}


enum LayoutEnum{row,column}