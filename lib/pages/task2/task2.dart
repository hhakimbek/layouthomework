import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                borderedContainer(
                  child: Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.circle),
                  ),
                ),
                borderedContainer(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.circle),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.circle),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                borderedContainer(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Icon(Icons.circle),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: Icon(Icons.circle),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(Icons.circle),
                      ),
                    ],
                  ),
                ),
                borderedContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                borderedContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                        ],
                      ),
                      Icon(Icons.circle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                        ],
                      )
                    ],
                  ),
                ),
                borderedContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget borderedContainer({required Widget child}) {
    return Container(
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.black),
      ),
      padding: EdgeInsets.all(10),
      child: child,
    );
  }
}
