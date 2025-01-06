import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/bbongflix_logo.png'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'SeungHeyon',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              width: 140,
              height: 5,
              color: Colors.red,
            ),
            Linkify(
              onOpen: (link) async {
                final uri = Uri.parse(link.url); // URL을 Uri 객체로 변환
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Could not launch $uri';
                }
              },
              text: 'https://github.com/puppy1012',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              linkStyle: TextStyle(color: Colors.white),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  // 버튼 클릭 시 동작
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red, // 버튼 배경색
                  padding: EdgeInsets.all(10), // 버튼 내부 여백
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.edit,
                      color: Colors.white, // 아이콘 색상
                    ),
                    SizedBox(
                      width: 10, // 아이콘과 텍스트 사이 간격
                    ),
                    Text(
                      '프로필 수정하기',
                      style: TextStyle(
                        color: Colors.white, // 텍스트 색상
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
