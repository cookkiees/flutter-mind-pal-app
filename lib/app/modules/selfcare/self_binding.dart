import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/selfcare/self_controller.dart';

class SelfCareBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SelfCareController());
  }
}
