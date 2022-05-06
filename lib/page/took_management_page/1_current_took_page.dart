import 'package:flutter/material.dart';

class CurrentTookPage extends StatefulWidget {
  const CurrentTookPage({Key? key}) : super(key: key);

  @override
  State<CurrentTookPage> createState() => _CurrentTookPageState();
}

class _CurrentTookPageState extends State<CurrentTookPage> {
  @override
  final List<String> itemimages = [
    "https://cdn2.thecatapi.com/images/bi.jpg",
    "https://cdn2.thecatapi.com/images/63g.jpg",
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
                            flex: 1,
                            child: Image.network(
                              itemimages[index],
                              fit: BoxFit.contain,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Image.network(
                              itemimages[index],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.grey,
                        child: Text(
                          "VS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
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
