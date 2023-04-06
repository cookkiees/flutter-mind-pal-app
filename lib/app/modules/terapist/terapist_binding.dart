import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/terapist/terapist_controller.dart';

class TerapistBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TerapistController());
  }
}
