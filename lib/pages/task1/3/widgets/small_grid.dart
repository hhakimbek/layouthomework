import 'package:flutter/material.dart';

import '../../../../widgets/my_container.dart';

class SmallGrid extends StatelessWidget {
  const SmallGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        for(int i=1;i<=6;i++)Expanded(
          child: Row(
            spacing: 20,
            children: [
              for (int i = 1; i <= 4; i++) Expanded(child: MyContainer()),
            ],
          ),
        ),
      ],
    );
  }
}
