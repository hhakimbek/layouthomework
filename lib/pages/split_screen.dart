import 'package:flutter/material.dart';

class SplitScreen extends StatefulWidget {
  const SplitScreen({super.key});

  @override
  State<SplitScreen> createState() => _SplitScreenState();
}

class _SplitScreenState extends State<SplitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ColoredBox(
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text("R.", style: TextStyle(fontSize: 260)),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Data ${"lorem ipsum" * 14}.",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  Spacer(),
                  Text("Studio:", style: TextStyle(color: Colors.white60)),
                  Text(
                    "rayangolf@gmail.com",
                    style: TextStyle(color: Colors.white60),
                  ),
                  Text(
                    "(+351)372 77 83\n",
                    style: TextStyle(color: Colors.white60),
                  ),
                  Text("Social:", style: TextStyle(color: Colors.white60)),
                  Text("Instagram", style: TextStyle(color: Colors.white60)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
