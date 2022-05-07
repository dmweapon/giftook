import '../m_mytook/mytook_controller.dart';
import 'package:get/get.dart';

class MyTookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyTookController>(() => MyTookController());
  }
}
