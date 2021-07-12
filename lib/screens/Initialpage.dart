import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
      child: Image(
        image: AssetImage('assets/icon/icon.png'),
      ),
    )));
  }
}
