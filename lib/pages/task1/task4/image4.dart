import 'package:flutter/material.dart';

import '../../../widgets/my_container.dart';

class Image4 extends StatefulWidget {
  const Image4({super.key});

  @override
  State<Image4> createState() => _Image4State();
}

class _Image4State extends State<Image4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            LargeGrid(),
            SmallGrid(),
            Mosaic1(),
            Mosaic2(),
            Mosaic3(),

            Mosaic4(),
            Mosaic5(),
            Mosaic6(),
            Mosaic7(),
            Mosaic8(),
          ],
        ),
      ),
    );
  }
}


class LargeGrid extends StatelessWidget {
  const LargeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: List.generate(3, (index) => Expanded(
        child: Row(
          spacing: 20,
          children: [
            Expanded(child: MyContainer()),
            Expanded(child: MyContainer()),
          ],
        ),
      )),
    );
  }
}

class SmallGrid extends StatelessWidget {
  const SmallGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: List.generate(4, (index) => Expanded(
        child: Row(
          spacing: 15,
          children: List.generate(4, (index) => Expanded(child: MyContainer())),
        ),
      )),
    );
  }
}

class Mosaic1 extends StatelessWidget {
  const Mosaic1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(
          flex: 3,
          child: MyContainer(),
        ),
        Expanded(
          flex: 1,
          child: MyContainer(),
        ),
      ],
    );
  }
}

class Mosaic2 extends StatelessWidget {
  const Mosaic2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [

        Expanded(
          flex: 2,
          child: MyContainer(),
        ),

        Expanded(
          flex: 1,
          child: MyContainer(),
        ),
      ],
    );
  }
}

class Mosaic3 extends StatelessWidget {
  const Mosaic3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          flex: 1,
          child: MyContainer(),
        ),
        Expanded(
          flex: 2,
          child: MyContainer(),
        ),
      ],
    );
  }
}

class Mosaic4 extends StatelessWidget {
  const Mosaic4({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Expanded(
          child: Row(
            spacing: 20,
            children: [
              Expanded(child: MyContainer()),
              Expanded(child: MyContainer()),
            ],
          ),
        ),
        Expanded(child: MyContainer()),
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
    );
  }
}

class Mosaic5 extends StatelessWidget {
  const Mosaic5({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
              Expanded(flex: 2, child: MyContainer()),
              Expanded(child: MyContainer()),
            ],
          ),
        ),
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
    );
  }
}

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
                Expanded(flex: 2, child: MyContainer()),
                Expanded(child: MyContainer()),
              ],
            ),
          ),
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
      );
    }
  }

class Mosaic7 extends StatelessWidget {
    const Mosaic7({super.key});

    @override
    Widget build(BuildContext context) {
      return Column(
        spacing: 20,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              spacing: 20,
              children: [
                Expanded(flex: 3, child: MyContainer()),
                Expanded(
                  child: Column(
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
            flex: 2,
            child: Row(
              spacing: 20,
              children: [
                Expanded(
                  child: Column(
                    spacing: 20,
                    children: [
                      Expanded(child: MyContainer()),
                      Expanded(child: MyContainer()),
                    ],
                  ),
                ),
                Expanded(flex: 3, child: MyContainer()),
              ],
            ),
          ),
        ],
      );
    }
  }

  class Mosaic8 extends StatelessWidget {
  const Mosaic8({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14,
      children: [
        Expanded(
          child: Row(
            spacing: 14,
            children: [
              Expanded(flex: 2, child: MyContainer()),
              Expanded(
                child: Column(
                  spacing: 14,
                  children: [
                    Expanded(child: MyContainer()),
                    Expanded(child: MyContainer()),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  spacing: 14,
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
          flex: 2,
          child: Row(
            spacing: 14,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  spacing: 14,
                  children: [
                    Expanded(child: Row(
                      spacing: 14,
                      children: [
                        Expanded(child: MyContainer()),
                        Expanded(child: MyContainer()),
                      ],
                    )),
                    Expanded(child: MyContainer()),
                    Expanded(child: MyContainer()),
                    Expanded(child: MyContainer()),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  spacing: 14,
                  children: [
                    Expanded(flex: 2, child: MyContainer()),
                    Expanded(child: MyContainer()),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  spacing: 14,
                  children: [
                    Expanded(child: MyContainer()),
                    Expanded(child: MyContainer()),
                    Expanded(flex: 2, child: MyContainer()),
                    Expanded(child: MyContainer()),
                  ],
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: Row(
            spacing: 14,
            children: [
              Expanded(child: MyContainer()),
              Expanded(flex: 2, child: MyContainer()),
              Expanded(child: MyContainer()),
            ],
          ),
        ),
      ],
    );
  }
}

