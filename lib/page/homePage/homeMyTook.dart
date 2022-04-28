import 'package:flutter/material.dart';

class homeMyTook extends StatefulWidget {
  const homeMyTook({Key? key}) : super(key: key);

  @override
  State<homeMyTook> createState() => _homeMyTookState();
}

class _homeMyTookState extends State<homeMyTook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      height: 160.0,
      width: double.infinity,
      color: Color(0xffFF8542),
      child: Stack(
        children: [
          // 카테고리
          Container(child: Text('내가 올린 툭')),
          // 툭 제목
          Container(margin: EdgeInsets.only(top: 30), child: Text('내가 올린 툭')),
          // 툭 본문
          Container(
            margin: EdgeInsets.only(top: 60),
            width: 160,
            child: Flexible(
              child: RichText(
                text: TextSpan(
                  text: '나이 차이가 좀 나는 동생이라 뭘 좋아할지 모르겠어요, 툭거들의 선택을 기다립니다!',
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
          ),
          // 툭 확인 버튼
          Container(
            width: 160,
            margin: EdgeInsets.only(top: 100),
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
          )
        ],
      ),
    );
  }
}
