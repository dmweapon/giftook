import 'package:flutter/material.dart';

class RecentTookList extends StatelessWidget {
  const RecentTookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      color: Colors.grey,
      height: 60,
      width: double.infinity,
      child: Row(
        children: [
          Text("방금 올라온 툭 보러가기"),
          Spacer(),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}
