import 'package:firebase_auth/firebase_auth.dart';
import 'package:giftook/pages/s_login/login_page.dart';

import '../../services/auth_service.dart';
import '../0_routes/app_routes.dart';
import '../m_voting/voting_page.dart';
import '../m_mytook/mytook_page.dart';
import '../m_home/home_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appmain_controller.dart';

class AppMainPage extends GetView {
  const AppMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();
    User? user = authService.currentUser();
    return GetBuilder<AppMainController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffFF8542),
            elevation: 0.0,
            centerTitle: false,
            iconTheme: IconThemeData(color: Color.fromARGB(255, 228, 104, 38)),
            title: Row(
              children: [
                Icon(Icons.monetization_on, color: Colors.white),
                SizedBox(width: 8.0),
                Text(
                  "1234 Point",
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text("알림"),
              ),
              TextButton(
                // onPressed: () => {authService.signOut()},
                onPressed: () {
                  authService.signOut();
                  Get.offAll(LoginPage());
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text("로그아웃"),
              ),
              // IconButton(
              //   icon: Icon(Icons.abc, color: Colors.white),
              //   onPressed: null,
              // ),
              // IconButton(
              //   icon: Icon(Icons.abc, color: Colors.white),
              //   onPressed: null,
              // ),
            ],
          ),
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomePage(),
              VotingPage(),
              MyTookPage(),
            ],
          ),
          // Container(
          //   child: Center(
          //     child: Text(
          //       "Dashboard",
          //       style: TextStyle(fontSize: 20),
          //     ),
          //   ),
          // ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              _bottomNavigationMenu(
                icon: Icons.home,
                MenuName: "홈",
              ),
              _bottomNavigationMenu(
                icon: Icons.alarm,
                MenuName: "툭툭 투표하기",
              ),
              _bottomNavigationMenu(
                icon: Icons.person,
                MenuName: "My 툭",
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationMenu({IconData? icon, String? MenuName}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: MenuName,
    );
  }
}
