import '../m_home/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import 'm_home_sub/1_home_mytook.dart';
import 'm_home_sub/2_weekly_best_took.dart';
import 'm_home_sub/3_recent_took_list.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeMyTook(),
            SizedBox(height: 24),
            BestTook(),
            SizedBox(height: 24),
            RecentTookList(),
            RecentTookList(),
          ],
        ),
      ),
    );
  }
}
