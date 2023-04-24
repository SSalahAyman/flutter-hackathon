import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          child: Text("Go to page 3"),
          onPressed: () {},
        ),
      ),
    );
  }
}
