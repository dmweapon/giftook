import '../0_appmain/appmain_binding.dart';
import '../0_appmain/appmain_page.dart';
import '../s_page1/page1_page.dart';
import '../s_page2/page2_page.dart';

import 'app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
        name: AppRoutes.APPMAIN,
        page: () => AppMainPage(),
        binding: DashboardBinding(),
        transition: Transition.zoom),
    GetPage(
        name: AppRoutes.PAGE1,
        page: () => Page1Page(),
        binding: null,
        transition: Transition.zoom),
    GetPage(
        name: AppRoutes.PAGE2,
        page: () => Page2Page(),
        binding: null,
        transition: Transition.zoom),
  ];
}
