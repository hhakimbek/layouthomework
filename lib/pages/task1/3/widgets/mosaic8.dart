import 'package:flutter/cupertino.dart';
import 'package:myhomeapp/widgets/my_container.dart';

class Mosaic8 extends StatelessWidget {
  const Mosaic8({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              Expanded(
                child: Column(
                  spacing: 20,
                  children: [
                    Expanded(flex: 2, child: MyContainer()),
                    Expanded(
                      child: Row(
                        spacing: 20,
                        children: [
                          Expanded(child: MyContainer()),
                          Expanded(child: MyContainer()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: Column(
                        spacing: 20,
                        children: [
                          Expanded(child: MyContainer()),
                          Expanded(flex: 2, child: MyContainer()),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        spacing: 20,
                        children: [
                          Expanded(child: MyContainer()),
                          Expanded(child: MyContainer()),
                          Expanded(child: MyContainer()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: Row(
                        spacing: 20,
                        children: [
                          Expanded(flex: 2, child: MyContainer()),
                          Expanded(child: MyContainer()),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        spacing: 20,
                        children: [
                          Expanded(child: Column(
                            spacing: 20,
                            children: [
                              Expanded(child: MyContainer()),
                              Expanded(child: MyContainer()),
                            ],
                          )),
                          Expanded(flex: 2,child: MyContainer())
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(child: Column(
                spacing: 20,
                children: [
                  Expanded(flex: 2,child: MyContainer()),
                  Expanded(child: MyContainer())
                ],
              )),
            ],
          ),
        ),
      ],
    );
  }
}
