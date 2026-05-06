import 'package:flutter/material.dart';

class MyGridPaperWidget extends StatelessWidget {
  const MyGridPaperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: GridPaper(
          color: Colors.grey.withValues(alpha: .7),
          divisions: 1,
          subdivisions: 5,
          child: Center(child: Text("SALOM"),),
        ),
      ),
    );
  }
}
