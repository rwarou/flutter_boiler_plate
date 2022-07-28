import 'dart:io';

import 'package:boiler_plate/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Injector {
  Injector._();
  static Future<void> inject() async {
    HttpOverrides.global = MyHttpOverrides();
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
