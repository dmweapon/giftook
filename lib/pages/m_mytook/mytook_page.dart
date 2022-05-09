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
