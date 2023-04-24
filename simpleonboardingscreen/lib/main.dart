import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simpleonboardingscreen/home_page.dart';
import 'package:simpleonboardingscreen/onboardingscreens.dart';
import 'dart:io';
import 'package:simpleonboardingscreen/page_controller.dart';

void main() async {
  await Hive.initFlutter();
  await Boxcontroller.init();
  runApp(Onboardscreens());
}

class Onboardscreens extends StatelessWidget {
  const Onboardscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnboardingApp',
      home: Boxcontroller.getboolinbox() ? Onboardingscreens() : Homepage(),
    );
  }
}
