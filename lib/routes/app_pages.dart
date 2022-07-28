import 'package:boiler_plate/routes/app_routes.dart';
import 'package:boiler_plate/views/splash.dart';
import 'package:get/get.dart';

class AppPages {
  static final appPages = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const Splash(),
    ),
  ];
}
