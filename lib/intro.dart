import 'package:flutter/material.dart';
import 'dart:async'; //timer 를 사용하기 위함 package
import 'main.dart';
import 'package:lottie/lottie.dart'; // 애니메이션을 사용하기 위한 package

class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IntroPage();
}

class _IntroPage extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    // 5초 지연 후 onDoneLoading 으로 페이지 이동한다.
    return Timer(Duration(seconds: 3), onDoneLoading);
  }

  // 지연이 완료 된 후
  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MyHome()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Intro Example'),
      // ),
      body: Container(
        // 중앙 정렬
        alignment: Alignment.center,
        child: Column(
          // 가로 중앙 정렬
          crossAxisAlignment: CrossAxisAlignment.center,
          // 세로 중앙 정렬
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              //사이즈 박스에 Lottie 애니메이션 삽입
              child: Lottie.asset('assets/lottie/animation.json'),
            )
          ],
        ),
      ),
    );
  }
}
