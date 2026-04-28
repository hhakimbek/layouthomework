import 'package:flutter/cupertino.dart';
import 'package:myhomeapp/widgets/my_container.dart';

class Mosaic7 extends StatelessWidget {
  const Mosaic7({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              Expanded(flex: 4, child: MyContainer()),
              Expanded(child: Column(
                spacing: 20,
                children: [
                  Expanded(child: MyContainer()),
                  Expanded(flex: 2, child: MyContainer()),
                ],
              ),),

            ],
          ),
        ),
        Expanded(
          child: Row(
            textDirection: TextDirection.rtl,
            spacing: 20,
            children: [
              Expanded(flex: 4, child: MyContainer()),
              Expanded(
                child: Column(
                  spacing: 20,
                  children: [
                    Expanded(child: MyContainer()),
                    Expanded(flex: 2, child: MyContainer()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
