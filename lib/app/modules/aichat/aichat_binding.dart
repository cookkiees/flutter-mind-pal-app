import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/aichat/aichat_controller.dart';

class AIChatBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AIChatController());
  }
}
