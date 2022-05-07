import '../m_voting/voting_page.dart';
import '../m_mytook/mytook_page.dart';
import '../m_home/home_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appmain_controller.dart';

class AppMainPage extends StatelessWidget {
  const AppMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppMainController>(
      builder: (controller) {
        return Scaffold(
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
