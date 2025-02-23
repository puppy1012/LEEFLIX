import 'package:asfw3/screen/home_screen.dart';
import 'package:asfw3/screen/morescreen.dart';
import 'package:asfw3/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
//https://www.inflearn.com/courses/lecture?courseId=324976&unitId=37784&subtitleLanguage=ko
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LeeseungFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black, // 여전히 지원됨
        colorScheme: ColorScheme.dark(
          primary: Colors.black, // primaryColor 대체
          secondary: Colors.white, // accentColor 대체
        ),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              Container(
                child: Center(
                  child: Text('search'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('save'),
                ),
              ),
              MoreScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
