import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        // SafeArea : 기기의 상단 노티바 부분, 하단영역을 침범하지 않는 안전한 영역을 잡아주는 위젯
        child: Scaffold(
            appBar: AppBar(
              title: Text('My Quiz App'),
              backgroundColor: Colors.deepPurple,
              leading: Container(),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(child: Image.asset('images/무제.png', width: width * 0.8)),
                Padding(
                  padding: EdgeInsets.all(width * 0.024),
                ),
                Text(
                  '플러터 퀴즈 앱',
                  style: TextStyle(
                    fontSize: width * 0.065,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '퀴즈를 풀기 전 안내사항입니다.\n꼼꼼히 읽고 퀴즈 풀기를 눌러주세요.',
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.048),
                )
              ],
            )));
  }
}
