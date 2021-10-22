import 'package:flutter/material.dart';
import 'intro.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

import 'package:lottie/lottie.dart'; // 애니메이션을 사용하기 위한 package

// git push test.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intro Example',
      home: IntroPage(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late TabController controller;
  int _currentIndex = 0; // 탭 이동 시 기존 정보를 유지하기 위한 변수

  void onTabTapped(int index) {
    setState(() {
      // 탭을 클릭할 때 현재의 탭화면을 변수에 저장.
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 탭간 이동 시 기존 정보가 초기화 되는 것을 해결하기위해 IndexedStack 적용.
      body: IndexedStack(
        index: _currentIndex,
        children: [
          page1(), //Flag Quiz
          page2(), //Country Quiz
          page3(), //Rank
          page4(), //Information
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        // selectedItemColor: Colors.orange,
        type: BottomNavigationBarType.shifting,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            // icon: Icon(Icons.looks_one, color: Colors.blue),
            icon: Lottie.asset('assets/lottie/b_map2.json', height: 56),
            label: 'Flag Quiz',
            backgroundColor: Colors.grey,
            tooltip: 'You can learn international flags!!',
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.looks_two, color: Colors.blue),
            icon: Lottie.asset('assets/lottie/b_flag.json', height: 56),
            label: 'Country Quiz',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.add, color: Colors.blue),
            icon: Lottie.asset('assets/lottie/b_ranking.json', height: 56),
            label: 'Rank',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.home, color: Colors.blue),
            icon: Lottie.asset('assets/lottie/b_search.json', height: 56),
            label: 'Information',
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
