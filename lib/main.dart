import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/0_routes/app_pages.dart';
import 'pages/0_routes/app_routes.dart';
import 'pages/0_themes/0_app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx App",
      initialRoute: AppRoutes.APPMAIN,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
