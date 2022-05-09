import '../0_appmain/appmain_binding.dart';
import '../0_appmain/appmain_page.dart';
import '../s_login/login_page.dart';
import '../s_login/login_page_binding.dart';
import '../s_page2/page2_page.dart';

import 'app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.LOGINPAGE,
        page: () => LoginPage(),
        binding: LoginPageBinding(),
        transition: Transition.zoom),
    GetPage(
        name: AppRoutes.APPMAIN,
        page: () => AppMainPage(),
        binding: AppMainBinding(),
        transition: Transition.zoom),
    GetPage(
        name: AppRoutes.PAGE2,
        page: () => Page2Page(),
        binding: null,
        transition: Transition.zoom),
  ];
}
