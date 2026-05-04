import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorageCtn extends StatelessWidget {
  const StorageCtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ColoredBox(
        color: Colors.lightBlueAccent.withAlpha(30),
        child: Center(child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(20),side: BorderSide(width: 4,color: Colors.white.withAlpha(200))),
          borderOnForeground: true,
          elevation: 0,
          clipBehavior: Clip.antiAlias,
            color: Colors.white30,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
              elevation: 7,
              color: Colors.white,
              shadowColor: Colors.blueGrey.withAlpha(80),
              child: SizedBox(
                height: 190,
                width: 240,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          Icon(CupertinoIcons.cloud,size: 40,textDirection: TextDirection.rtl,),
                          Text("Storage",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      LinearProgressIndicator(
                        value: .3,
                        color: Colors.black,
                        minHeight: 5,
                        borderRadius: BorderRadius.circular(5),
                        backgroundColor: Colors.lightBlueAccent.withAlpha(40),
                      ),
                      Text("308 MB of 33 GB used",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 12),),
                      Spacer(),
                      MaterialButton(
                        onPressed: () {

                        },
                        color: Colors.black,
                        minWidth: double.infinity,
                        height: 45,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        child: Text("Buy storage",style: TextStyle(color: Colors.white),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
