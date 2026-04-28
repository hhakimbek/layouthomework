import 'package:flutter/cupertino.dart';
import 'package:myhomeapp/widgets/my_container.dart';

class Mosaic5 extends StatelessWidget {
  const Mosaic5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              Expanded(flex:4,child: MyContainer()),
              Expanded(child: MyContainer()),
            ],
          ),
        ),
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              Expanded(child: MyContainer()),
              Expanded(flex:4,child: MyContainer()),
            ],
          ),
        ),
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              Expanded(flex:4,child: MyContainer()),
              Expanded(child: MyContainer()),
            ],
          ),
        ),
      ],
    );
  }
}
