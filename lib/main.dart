import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';

main() => runApp(Vlanner());

class Vlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vlanner Planeje e se Organize',
      home: ScreenHome(),
    );
  }
}
