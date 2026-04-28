import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}
