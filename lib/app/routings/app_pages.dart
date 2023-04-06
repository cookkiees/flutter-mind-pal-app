import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/main/main_binding.dart';
import 'package:mind_pal_app/app/modules/main/main_screen.dart';
import 'package:mind_pal_app/app/modules/onboarding/onboarding_binding.dart';


import '../modules/onboarding/onboarding_screen.dart';
import 'app_routers.dart';

class AppPages {
  static const initial = AppRouters.onboarding;

  static final routes = [
    GetPage(
      name: AppRouters.onboarding,
      page: () => const OnboardingScreen(),
      binding: OnboardingBinding(),
    ),
    GetPage(

      name: AppRouters.main,
      page: () => const MainScreen(),
      binding: MainBinding(),

    ),
  ];
}
