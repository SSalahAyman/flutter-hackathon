import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage("assets/images/application_logo.png"),
              width: 250,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Welcome to the Green Egypt 🤍",
              style: TextStyle(
                fontFamily: 'pacifico',
                color: Color(0xff283c5f),
                fontWeight: FontWeight.w300,
                fontSize: 22,
              ),
            ),
            Text(
              "Earn money from Recycling 🤍",
              style: TextStyle(
                fontFamily: 'pacifico',
                color: Color(0xff283c5f),
                fontWeight: FontWeight.w300,
                fontSize: 22,
              ),
            )
          ],
        ),
      ),
    );
  }
}
