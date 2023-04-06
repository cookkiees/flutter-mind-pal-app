import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/main/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
