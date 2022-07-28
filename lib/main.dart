import 'package:boiler_plate/routes/app_routes.dart';
import 'package:boiler_plate/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Injector.inject().then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 0.8,
        ),
        child: child!,
      ),
      defaultTransition: Transition.fade,
      smartManagement: SmartManagement.keepFactory,
      initialRoute: AppRoutes.splash,
      getPages: [],
      theme: ThemeData(
        fontFamily: 'NotoSansKr',
        primaryColor: Colors.white,
        brightness: Brightness.light,
        primaryColorDark: Colors.black,
        canvasColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: ConstColors.defaultColor,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: ConstColors.defaultColor,
          selectionHandleColor: ConstColors.defaultColor,
        ),
      ),
    );
  }
}
