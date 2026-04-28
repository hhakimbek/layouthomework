import 'package:flutter/cupertino.dart';
import 'package:myhomeapp/widgets/my_container.dart';

class LargeGrid extends StatelessWidget {
  const LargeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(child: Row(
          spacing: 20,
          children: [
            Expanded(child: MyContainer()),
            Expanded(child: MyContainer())
          ],
        )),
        Expanded(child: Row(
          spacing: 20,
          children: [
            Expanded(child: MyContainer()),
            Expanded(child: MyContainer())
          ],
        )),
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
