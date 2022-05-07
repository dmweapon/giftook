import '../s_page1/page1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1Page extends GetView<Page1Controller> {
  const Page1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1 Sample"),
      ),
      body: Container(
        child: Center(
            child: Text(
          "Page1 Sample",
          style: TextStyle(fontSize: 20),
        )),
      ),
    );
  }
}
