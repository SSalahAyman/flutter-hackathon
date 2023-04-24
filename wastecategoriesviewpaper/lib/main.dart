import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wastecategoriesviewpaper/paper_view_page.dart';
// ignore: depend_on_referenced_packages
// import 'package:wastecategoriesviewpaper/dimensions/dimensions.dart';

void main() {
  runApp(Paper_View());
}

class Paper_View extends StatelessWidget {
  Paper_View({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Paper_View",
      home: Scaffold(
        body: Paperpage(),
      ),
    );
  }
}
