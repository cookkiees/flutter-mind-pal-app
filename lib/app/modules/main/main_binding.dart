import 'package:get/get.dart';
import '../home/home_controller.dart';
import '../selfcare/self_controller.dart';
import '../terapist/terapist_controller.dart';
import 'main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(HomeController());
    Get.put(TerapistController());
    Get.put(SelfCareController());
  }
}
