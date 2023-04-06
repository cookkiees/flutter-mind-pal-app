import 'package:get/get.dart';
import 'package:mind_pal_app/app/modules/journal/journal_controller.dart';

class JournalBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(JournalController());
  }
}
