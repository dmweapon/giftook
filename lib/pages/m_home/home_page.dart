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
            onPressed: null,
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            child: Text("검색"),
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
