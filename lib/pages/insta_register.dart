import 'package:flutter/material.dart';

class InstaRegister extends StatelessWidget {
  const InstaRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text("Instragram", style: TextStyle(fontSize: 26)),
            TextField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(fontSize: 14),
                floatingLabelStyle: TextStyle(fontSize: 14, color: Colors.blue),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            TextField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: "Email",
                floatingLabelStyle: TextStyle(fontSize: 14, color: Colors.blue),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            TextField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                labelText: "Password",
                floatingLabelStyle: TextStyle(fontSize: 14, color: Colors.blue),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 10,),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              minWidth: double.infinity,
              elevation: 0,
              child: Text("Sign Up", style: TextStyle(color: Colors.white)),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Already have an account?"),
                TextButton(
                  onPressed: () {},
                  child: Text('Log In', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
