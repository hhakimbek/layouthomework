import 'package:flutter/material.dart';

class PodcastSplashScreen extends StatelessWidget {
  const PodcastSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String imageUrl =
        'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=';
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFC9D1E6), Color(0xFFB6C0DB), Color(0xFFAAB7D8)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 28),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(36),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(150),
                      topRight: Radius.circular(150),
                    ),
                    // clipBehavior: Clip.hardEdge,
                    child: Container(
                      height: 340,
                      width: double.infinity,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F2F6),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                            spreadRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const Center(
                          child: Icon(
                            Icons.image_outlined,
                            size: 56,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 34),
                  const Text(
                    'Listen to the podcast,\nfeel the pain',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0E1020),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'Listen to podcast anywhere\nat anytime',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.5,
                      color: Color(0xFF8E93A4),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 28),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.blue
            ]
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlue.withAlpha(30),
              offset: Offset(0, 7),
              spreadRadius: 7,
              blurRadius: 5
            )
          ]
        ),
        clipBehavior: Clip.hardEdge,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {},
          elevation: 0,
          child: const Icon(Icons.arrow_forward, size: 30,color: Colors.white,),
        ),
      ),
    );
  }
}
