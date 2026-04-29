import 'package:flutter/material.dart';

import '../../../../widgets/my_container.dart';

class Mosaic2 extends StatelessWidget {
  const Mosaic2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(flex: 2,child: MyContainer()),
        Expanded(child: Row(
          spacing: 20,
          children: [
            Expanded(child: MyContainer()),
            Expanded(child: MyContainer())
          ],
        )),
      ],
    );
  }
}
