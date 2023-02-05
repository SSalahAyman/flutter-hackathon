import 'package:flutter/material.dart';

void main() {
  runApp(Diamond());
}

class Diamond extends StatelessWidget {
  Diamond();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF4E7182),
        appBar: AppBar(
          title: Text("I Am Rich"),
          centerTitle: true,
          backgroundColor: Color(0XFF202B31),
        ),
        body: Center(
          child: Image(
            image: AssetImage("assets/diamond.png"),
            width: 450,
            height: 450,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
