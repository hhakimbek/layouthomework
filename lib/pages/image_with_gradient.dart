import 'package:flutter/material.dart';

class ImageWithGradient extends StatelessWidget {
  const ImageWithGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          item(),
          item(),
          item(),
        ],
      ),
    );
  }
  Widget item(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage("https://i.ytimg.com/vi/_10E22gCrnU/maxresdefault.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        foregroundDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              Colors.black12,
              Colors.black38,
              Colors.black87,
            ],
            stops: [0, 0.4, 1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}
