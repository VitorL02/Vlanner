import 'package:flutter/material.dart';

main() => runApp(Vlanner());

class Vlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vlanner Planeje e se Organize',
      home: MyHomePage(),
    );
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
