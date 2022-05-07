import 'package:flutter/material.dart';

class PastTookPage extends StatefulWidget {
  const PastTookPage({Key? key}) : super(key: key);

  @override
  State<PastTookPage> createState() => _PastTookPageState();
}

class _PastTookPageState extends State<PastTookPage> {
  @override
  final List<String> itemimages = [
    "https://cdn2.thecatapi.com/images/63g.jpg",
    "https://cdn2.thecatapi.com/images/bi.jpg",
    "https://cdn2.thecatapi.com/images/a3h.jpg",
    "https://cdn2.thecatapi.com/images/a9m.jpg",
    "https://cdn2.thecatapi.com/images/aph.jpg",
    "https://cdn2.thecatapi.com/images/1rd.jpg",
    "https://cdn2.thecatapi.com/images/805.gif",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemCount: itemimages.length,
          itemBuilder: (BuildContext context, int index) {
            // String image = itemimages[index];
            return Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              // color: Colors.grey,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: true ? 3 : 1,
                            fit: FlexFit.tight,
                            child: Container(
                              height: 160,
                              decoration: true
                                  ? BoxDecoration(
                                      border: Border.all(
                                          width: 6, color: Color(0xffFF8542)),
                                    )
                                  : null,
                              child: Image.network(
                                itemimages[index],
                                fit: true ? BoxFit.cover : BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Flexible(
                            flex: false ? 3 : 1,
                            fit: FlexFit.tight,
                            child: Container(
                              height: 160,
                              decoration: false
                                  ? BoxDecoration(
                                      border: Border.all(
                                          width: 6, color: Color(0xffFF8542)),
                                    )
                                  : null,
                              child: Image.network(
                                itemimages[index],
                                fit: false ? BoxFit.cover : BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Flexible(
                            flex: true ? 3 : 1,
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16.0),
                                  width: double.infinity,
                                  height: 160,
                                  color: Colors.black.withOpacity(0.30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "툭커들의 선택",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Item 이름",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Spacer(),
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(fontSize: 16.0),
                                          children: [
                                            TextSpan(text: "725표  "),
                                            TextSpan(
                                              text: "85%",
                                              style: TextStyle(fontSize: 24.0),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: false ? 3 : 1,
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  height: 160,
                                  color: Colors.black.withOpacity(0.6),
                                  child: Text(
                                    "item 제목",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text("카테고리"),
                  Text("투표 제목"),
                  RichText(
                    text: TextSpan(
                      text:
                          '투표 본문 내용 투표 본문 내용 투표 본문 내용 투표 본문 내용 투표 본문 내용투표 본문 내용투표 본문 내용 투표 본문 내용 투표 본문 내용 투표 본문 내용 투표 본문 내용투표 본문 내용투표 본문 내용 투표 본문 내용 투표 본문 내용 투표 본문 내용 투표 본문 내용투표 본문 내용',
                      style: TextStyle(
                        color: Colors.black,
                        height: 1.4,
                        fontSize: 12.0,
                      ),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(height: 16)
                ],
              ),
            );
          },
        ),
        Positioned(
            right: 20,
            bottom: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF8542),
                  elevation: 1.0,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(12.0)),
              onPressed: () => {},
              child: Icon(Icons.add),
            )),
      ],
    );
  }
}
