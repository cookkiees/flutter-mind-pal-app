
import 'package:get/get.dart';

import 'app_routers.dart';
class AppPages {
  static const initial = AppRouters.;

  static final routes = [
    GetPage(name: AppRouters.onboarding, page: () => const OnboardingScreen()),

  ];
}
