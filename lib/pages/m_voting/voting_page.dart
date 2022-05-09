import 'package:flutter/material.dart';
import 'voting_controller.dart';
import 'package:get/get.dart';

class VotingPage extends GetView<VotingController> {
  const VotingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 툭 본문 글
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.grey[300],
                    child: Text("카테고리"),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "첫 월급! 엄마 생신 선물 골라주세요",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      text:
                          '취뽀 기념 첫 월급으로 엄마 생신 선물 사드리려는데 둘 중에 고민돼요... 둘 다 엄마가 갖고싶다고 하셨던 건데 역시 겨울이니까 목도리가 나을까요? 피커들의 생각을 들려주세요!',
                      style: TextStyle(
                        color: Colors.black,
                        height: 1.4,
                        fontSize: 12.0,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                  ),
                  SizedBox(height: 8),
                  Text("닉네임"),
                ],
              ),
            ),

            // 툭 본문 이미지 및 투표버튼
            Row(
              children: [
                // 왼쪽 항목 (첫 번째 항목)
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 258,
                        color: Colors.grey[400],
                      ),
                      TextButton(
                        onPressed: () {
                          print("왼쪽 투표");
                        },
                        style: TextButton.styleFrom(
                          // backgroundColor: Colors.grey,
                          side: BorderSide(color: Colors.black, width: 1.0),
                          shape: BeveledRectangleBorder(),
                          // minimumSize: Size(180, 50),
                        ),
                        child: Center(
                          child: Text(
                            "1번에 투표하기",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // 오른쪽 항목 (두 번째 항목)
                Flexible(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 258,
                        color: Colors.grey[300],
                      ),
                      TextButton(
                        onPressed: () {
                          print("오른쪽 투표");
                        },
                        style: TextButton.styleFrom(
                          // backgroundColor: Colors.grey,
                          side: BorderSide(color: Colors.black, width: 1.0),
                          shape: BeveledRectangleBorder(),
                          // minimumSize: Size(180, 50),
                        ),
                        child: Center(
                          child: Text(
                            "2번에 투표하기",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // 투표 하단 옵션 및 시간표시 영역
            Container(
              height: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("종료까지 남은시간"),
                  Text("00:00:15"),
                ],
              ),
            ),

            // 다음, 이전 투표로 넘어가기
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    print("이전 투표 보기 클릭");
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_left),
                      Text("이전 투표"),
                    ],
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    print("다음 투표 보기 클릭");
                  },
                  child: Row(
                    children: [
                      Text("다음 투표"),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
