import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/0_routes/app_pages.dart';
import 'pages/0_routes/app_routes.dart';
import 'pages/0_themes/0_app_themes.dart';
import 'services/auth_service.dart';

void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) exit(1);
  };

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Get.put(AuthService(), permanent: true);
    User? user = authService.currentUser();

    return GetMaterialApp(
      title: "Getx App",
      initialRoute: user == null ? AppRoutes.LOGINPAGE : AppRoutes.APPMAIN,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
