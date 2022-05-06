import 'package:flutter/material.dart';

class HomeMyTook extends StatefulWidget {
  const HomeMyTook({Key? key}) : super(key: key);

  @override
  State<HomeMyTook> createState() => _HomeMyTookState();
}

class _HomeMyTookState extends State<HomeMyTook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      // height: 250.0,
      width: double.infinity,
      color: Color(0xffFF8542),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 카테고리
          Container(child: Text('내가 올린 툭')),
          SizedBox(height: 8.0),
          // 툭 제목
          Container(child: Text('툭 제목 영역')),
          SizedBox(height: 8.0),
          // 툭 본문
          Container(
            height: 48,
            child: RichText(
              text: TextSpan(
                text:
                    '나이 차이가 좀 나는 동생이라 뭘 좋아할지 모르겠어요, 툭거들의 선택을 기다립니다! 나이 차이가 좀 나는 동생이라 뭘 좋아할지 모르겠어요, 툭거들의 선택을 기다립니다!',
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
          SizedBox(height: 8.0),
          // 툭 확인 버튼
          Container(
            width: 160,
            height: 40,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  elevation: 0,
                  side: BorderSide(color: Colors.black, width: 1.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                ),
                onPressed: () {
                  print("톡 현황 확인하기 클릭함");
                },
                child: Row(
                  children: [
                    Text("툭 현황 확인하기"),
                    SizedBox(width: 4.0),
                    Icon(Icons.arrow_forward)
                  ],
                )),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }
}
