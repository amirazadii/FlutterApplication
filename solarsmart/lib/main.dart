import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar_Smart Risskovteknik',
      theme: ThemeData(),
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 248, 248, 248),
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text('Solar Smart'),
            actions: [
              Icon(Icons.notifications),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.language_outlined),
              ),
              Icon(Icons.more_vert),
            ],
            backgroundColor: const Color.fromARGB(255, 248, 248, 248),
          ),
          body: SafeArea(
            child: Container(
              height: 100,
              width: 500,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(20),
              color: Colors.amber,
              child: Text('We Are Risskovtekik'),
            ),
          )),
    );
  }
}
