import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 248, 248, 248),
          appBar: AppBar(
            title: Text('SolarSmart'),
            backgroundColor: const Color.fromARGB(255, 200, 221, 46),
          ),
          body: SafeArea(
            child: Container(
              height: 100,
              width: 500,
              margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
              padding: EdgeInsets.all(20),
              color: Colors.amber,
              child: Text('We Are Risskovtekik'),
            ),
          )),
    );
  }
}
