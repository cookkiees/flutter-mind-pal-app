import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/subscription/subscription_controller.dart';

class SubscriptionBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SubscriptionController());
  }
}
