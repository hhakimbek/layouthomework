import 'package:flutter/cupertino.dart';

import '../../../../widgets/my_container.dart';

class Mosaic3 extends StatelessWidget {
  const Mosaic3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(flex: 5,child: MyContainer()),
        Expanded(child: Row(
          spacing: 20,
          children: [
            Expanded(child: MyContainer()),
            Expanded(child: MyContainer()),
            Expanded(child: MyContainer()),
            Expanded(child: MyContainer())
          ],
        )),
      ],
    );
  }
}
