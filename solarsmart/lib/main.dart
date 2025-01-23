import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        title: Text('SolarSmart'),
        backgroundColor: const Color.fromARGB(255, 200, 221, 46),
      ),
      body: Center(
        child: Text('We Are Solarsmart Risskovtek'),
      ),
    ),
  ));
}