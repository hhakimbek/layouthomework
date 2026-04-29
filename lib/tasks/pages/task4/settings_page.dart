import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Setings"),
        centerTitle: true,
        leading: BackButton(),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("MY ACCOUNT",style: TextStyle(fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 5,
              children: [
                myRow("Name", "Sarah Jons"),
                Divider(),
                myRow("Username", "sarah_jonas123"),
                Divider(),
                myRow("Birthday", "August 1, 1990"),
                Divider(),
                myRow("Mobile Number", "+14567893245"),
                Divider(),
                myRow("Email", ""),
                Divider(),
                myRow("Password", ""),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("APP SETTINGS",style: TextStyle(fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 10,),
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              spacing: 5,
              children: [
                myRow("Appearance", "Light"),
                Divider(),
                myRow("Accessibility", ""),
                Divider(),
                myRow("Language", "English, UK"),
                Divider(),
                myRow("Text & Images", ""),
              ],
            ),
          )
        ],
      ),
    );
  }
  
  Widget myRow(String title,String caption) {
    return Row(
      children: [
        Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
        Spacer(),
        Text(caption,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400,fontSize: 16),),
        Icon(CupertinoIcons.right_chevron,color: Colors.grey,size: 20,)
      ],
    );
  }
}
