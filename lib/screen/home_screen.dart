import 'package:asfw3/model/model_movie.dart';
import 'package:flutter/material.dart';
//영화정보 상단바,전체화면,포스터 등 구현

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.formMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}

// 상단 바(TopBar) 위젯
class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Container: 상하좌우 여백 설정
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      // Row: 가로 방향 배치, spaceBetween으로 양 끝에 정렬
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // 로고 이미지
          Image.asset(
            'images/bbongflix_logo.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          // 메뉴 탭: TV 프로그램
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          // 메뉴 탭: 영화
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          // 메뉴 탭: 내가찜한 목록
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가찜한 목록',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
