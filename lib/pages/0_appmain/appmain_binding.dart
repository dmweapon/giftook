import 'package:giftook/services/auth_service.dart';

import 'appmain_controller.dart';
import 'package:get/get.dart';

class AppMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppMainController>(() => AppMainController());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
