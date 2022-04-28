import 'package:flutter/material.dart';

class bestTook extends StatefulWidget {
  const bestTook({Key? key}) : super(key: key);

  @override
  State<bestTook> createState() => _bestTookState();
}

class _bestTookState extends State<bestTook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
      // color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '주간 TOP10 베스트 툭',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                bestTookCard(),
                SizedBox(width: 12),
                bestTookCard(),
                SizedBox(width: 12),
                bestTookCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container bestTookCard() {
    return Container(
      // color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            child: Container(color: Colors.amberAccent),
            width: 164,
            height: 164,
          ),
          SizedBox(height: 8),
          Text("01"),
          SizedBox(height: 8),
          Container(
            color: Colors.black,
            height: 1.0,
            width: 164,
          ),
          SizedBox(height: 8),
          Text("카테고리"),
          SizedBox(height: 8),
          SizedBox(
            width: 164,
            child: RichText(
              text: TextSpan(
                text: '나지 모르겠어요, 툭거지 모르겠어요, 툭거들의 선택을 기다립니다!',
                style: TextStyle(
                  color: Colors.black,
                  height: 1.4,
                  fontSize: 12.0,
                ),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
