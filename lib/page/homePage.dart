import 'package:flutter/material.dart';
import 'package:giftook/page/homePage/homeMyTook.dart';
import 'package:giftook/page/homepage/bestTook.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            homeMyTook(),
            SizedBox(height: 24),
            bestTook(),
            SizedBox(height: 24),
            bestTook(),
          ],
        ),
      ),
    );
  }
}
