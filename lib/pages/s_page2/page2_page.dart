import '../s_page2/page2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2Page extends GetView<Page2Controller> {
  const Page2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2 Sample"),
      ),
      body: Container(
        child: Center(
            child: Text(
          "Page2 Sample",
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
