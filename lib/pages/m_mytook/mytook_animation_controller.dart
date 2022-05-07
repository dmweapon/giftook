import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTookAnimationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController myTook_tabController;

  @override
  void onInit() {
    super.onInit();
    myTook_tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
  }
}
//   @override
//   void initState() {
//     // super.initState();
//     myTook_tabController = TabController(
//       length: 2,
//       vsync: this,
//       initialIndex: 0,
//     );
//     initState();
//   }
// 

// class SplashController extends GetxController with
//    GetSingleTickerProviderStateMixin {
//  AnimationController _ac;

//  @override
//  void onInit() {
//    final dur = const Duration(seconds: 2);
//    _ac = AnimationController.unbounded(duration: dur, vsync: this);
//    _ac.repeat();
//    _ac.addListener(() => print("Animation Controller value: ${_ac.value}"));
//  }