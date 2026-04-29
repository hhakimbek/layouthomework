import 'package:flutter/cupertino.dart';

import '../../../../widgets/my_container.dart';


class Mosaic1 extends StatelessWidget {
  const Mosaic1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(flex: 2,child: MyContainer()),
        Expanded(child: MyContainer()),
      ],
    );
  }
}
