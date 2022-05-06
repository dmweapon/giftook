import 'package:flutter/material.dart';
import 'package:giftook/page/took_management_page/1_current_took_page.dart';
import 'package:giftook/page/took_management_page/2_past_took_page.dart';

class TookManagementPage extends StatefulWidget {
  const TookManagementPage({Key? key}) : super(key: key);

  @override
  State<TookManagementPage> createState() => _TookManagementPageState();
}

class _TookManagementPageState extends State<TookManagementPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // decoration: BoxDecoration(
          //   border: Border.all(),
          // ),
          child: TabBar(
            controller: _tabController,
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
            controller: _tabController,
            children: [
              CurrentTookPage(),
              PastTookPage(),
            ],
          ),
        )
      ],
    );
  }
}
