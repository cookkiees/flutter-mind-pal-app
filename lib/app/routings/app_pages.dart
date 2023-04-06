import 'package:get/get.dart';
import '../modules/aichat/aichat_binding.dart';
import '../modules/aichat/aichat_screen.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_screen.dart';
import '../modules/journal/journal_binding.dart';
import '../modules/journal/journal_screen.dart';
import '../modules/main/main_binding.dart';
import '../modules/main/main_screen.dart';
import '../modules/onboarding/onboarding_binding.dart';
import '../modules/onboarding/onboarding_screen.dart';
import '../modules/selfcare/self_binding.dart';
import '../modules/selfcare/selfcare-detail/selfcare_detail_screen.dart';
import '../modules/selfcare/selfcare_screen.dart';
import '../modules/subscription/subscription_binding.dart';
import '../modules/subscription/subscription_screen.dart';
import '../modules/terapist/terapist_binding.dart';
import '../modules/terapist/terapist_screen.dart';
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
    GetPage(
      name: AppRouters.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRouters.terapist,
      page: () => const TerapistScreen(),
      binding: TerapistBinding(),
    ),
    GetPage(
      name: AppRouters.selfCare,
      page: () => const SelfCareScreen(),
      binding: SelfCareBinding(),
    ),
    GetPage(
      name: AppRouters.journal,
      page: () => const JournalScreen(),
      binding: JournalBinding(),
    ),
    GetPage(
      name: AppRouters.subscription,
      page: () => const SubscriptionScreen(),
      binding: SubscriptionBinding(),
    ),
    GetPage(
      name: AppRouters.aiChat,
      page: () => const AIChatScreen(),
      binding: AIChatBinding(),
    ),
    GetPage(
      name: AppRouters.selfCareDetail,
      page: () => const SelfCareDetailScreen(),
      binding: SelfCareBinding(),
    ),
  ];
}
