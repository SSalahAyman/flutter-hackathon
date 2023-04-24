import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simpleonboardingscreen/home_page.dart';
import 'package:simpleonboardingscreen/page_controller.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Text("finish"),
          onPressed: () async {
            await Boxcontroller.changevaluetofalse();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Homepage();
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
