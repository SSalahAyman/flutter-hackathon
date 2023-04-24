import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';

class Boxcontroller {
  static late Box box_firstTimeOpenApp;

  static Future<void> init() async {
    box_firstTimeOpenApp = await Hive.openBox("first_time");
  }

  static bool getboolinbox() {
    return box_firstTimeOpenApp.get("val", defaultValue: true);
  }

  static Future<void> changevaluetofalse() async {
    box_firstTimeOpenApp.put("val", false);
  }
}
