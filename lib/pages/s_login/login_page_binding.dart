import 'package:get/get.dart';

import '../../services/auth_service.dart';
import 'login_page_controller.dart';

class LoginPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(() => LoginPageController());
    Get.lazyPut<AuthService>(() => AuthService());
  }
}
