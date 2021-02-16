import 'package:flutter/material.dart';

class Vlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vlanner')),
      body: Center(child: Text('Inicio')),
    );
  }
}
