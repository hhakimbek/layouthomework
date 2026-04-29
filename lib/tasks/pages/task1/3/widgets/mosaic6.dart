import 'package:flutter/cupertino.dart';

import '../../../../widgets/my_container.dart';

class Mosaic6 extends StatelessWidget {
  const Mosaic6({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          child: Column(
            spacing: 20,
            children: [
              Expanded(flex: 2,child: MyContainer()),
              Expanded(child: MyContainer())
            ],
          ),
        ),
        Expanded(
          child: Column(
            spacing: 20,
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(flex: 2,child: MyContainer()),
              Expanded(child: MyContainer())
            ],
          ),
        )
      ],
    );
  }
}
