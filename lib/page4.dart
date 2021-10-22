import 'package:flutter/material.dart';

class page4 extends StatefulWidget {
  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Information'),
          ],
        ),
      ),
    );
  }
}
