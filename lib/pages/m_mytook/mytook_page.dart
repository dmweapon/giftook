import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'm_mytook_sub/1_current_took_page.dart';
import 'm_mytook_sub/2_past_took_page.dart';
import 'mytook_animation_controller.dart';
import 'mytook_controller.dart';

class MyTookPage extends GetView<MyTookController> {
  const MyTookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 애니메이션 컨트롤러 임포트 부분
    final MyTookAnimationController controller =
        Get.put(MyTookAnimationController());

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
      body: Column(
        children: [
          Container(
            // decoration: BoxDecoration(
            //   border: Border.all(),
            // ),
            child: TabBar(
              controller: controller.myTook_tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xffFF8542),
              tabs: [
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("진행중인 툭"),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: Text("종료된 툭"),
                ),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: TabBarView(
              controller: controller.myTook_tabController,
              children: [
                CurrentTookPage(),
                PastTookPage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
