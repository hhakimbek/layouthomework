import 'package:flutter/material.dart';

class MyGridTileBar extends StatelessWidget {
  const MyGridTileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width - 40,
            child: GridTile(
              header: const GridTileBar(
                backgroundColor: Colors.black45,

                leading: Icon(Icons.person),

                title: Text('Flutterd'),

                trailing: Icon(Icons.menu), // Icon
              ),
              child: Image.asset('assets/images/img.png', fit: BoxFit.cover),
              footer: Container(
                color: Colors.black54,
                height: 60,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.heart_broken_rounded, color: Colors.red),
                    ),
                    Text(
                      "Click the like button",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
