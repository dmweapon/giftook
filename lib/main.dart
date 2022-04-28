import 'package:flutter/material.dart';
import 'package:giftook/page/homePage.dart';
import 'package:giftook/page/myPage.dart';
import 'package:giftook/page/tookTookPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF8542),
        elevation: 0.0,
        centerTitle: false,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 228, 104, 38)),
        title: Row(
          children: [
            Icon(Icons.monetization_on, color: Colors.white),
            SizedBox(width: 8.0),
            Text(
              "1234 Point",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: null,
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            child: Text("알림"),
          ),
          TextButton(
            onPressed: null,
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            child: Text("검색"),
          ),
          // IconButton(
          //   icon: Icon(Icons.abc, color: Colors.white),
          //   onPressed: null,
          // ),
          // IconButton(
          //   icon: Icon(Icons.abc, color: Colors.white),
          //   onPressed: null,
          // ),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          homePage(),
          tookTookPage(),
          myPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard_rounded),
            label: "툭툭 투표하기",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "MY 툭",
          )
        ],
      ),
    );
  }
}
