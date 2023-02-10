import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'startscreen.dart';
// import 'package:seconddesign/paths/imagespaths.dart';

void main() {
  runApp(GreenEgyptV2());
}

class GreenEgyptV2 extends StatelessWidget {
  const GreenEgyptV2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "basic Green egypt 🍀",
      home: Scaffold(
        body: SafeArea(
          child: AnimatedSplashScreen(
            duration: 3000,
            animationDuration: Duration(seconds: 1),
            splashIconSize: Get.height,
            splashTransition: SplashTransition.fadeTransition,
            splash: Container(
              width: Get.width,
              height: Get.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/cover2.png"),
                fit: BoxFit.cover,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Lottie.asset(
                    "assets/animated/38350-reduce-reuse-recycle.json",
                    width: 250,
                  )),
                  SizedBox(height: 18),
                  Text(
                    "🍀 Green Egypt 🍀",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 22, 176, 22),
                        fontFamily: 'Pacifico'),
                  ),
                  SizedBox(height: 18),
                  Text(
                    " Recycle & Earn Is Our Goal 💚 ",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color.fromARGB(255, 22, 176, 22),
                        fontFamily: 'Pacifico'),
                  ),
                ],
              ),
            ),
            nextScreen: StartScreen(),
          ),
        ),
      ),
    );
  }
}
