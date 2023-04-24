import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpleonboardingscreen/page_1.dart';
import 'package:simpleonboardingscreen/page_2.dart';
import 'package:simpleonboardingscreen/page_3.dart';

class Onboardingscreens extends StatelessWidget {
  const Onboardingscreens({super.key});
  static late double width;
  static late double height;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: PageView(
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
