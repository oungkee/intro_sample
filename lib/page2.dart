import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country Quiz'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Country Quiz'),
          ],
        ),
      ),
    );
  }
}
