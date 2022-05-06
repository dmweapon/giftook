import 'package:flutter/material.dart';
import 'package:giftook/page/home_page/1_home_mytook.dart';
import 'package:giftook/page/home_page/2_weekly_best_took.dart';
import 'package:giftook/page/home_page/3_recent_took_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
