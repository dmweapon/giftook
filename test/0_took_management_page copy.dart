import 'package:flutter/material.dart';
import 'package:giftook/page/took_management_page/1_current_took_page.dart';
import 'package:giftook/page/took_management_page/2_past_took_page.dart';

class TookManagementPage extends StatefulWidget {
  const TookManagementPage({Key? key}) : super(key: key);

  @override
  State<TookManagementPage> createState() => _TookManagementPageState();
}

class _TookManagementPageState extends State<TookManagementPage> {
  int _tookManagementPageTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _tookManagementPageTab,
        children: [
          CurrentTookPage(),
          PastTookPage(),
        ],
      ),
    );
  }
}
