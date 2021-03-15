import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[600],
          title: Text(
            'Vlanner',
          ),
        ),
        body: Center(
          child: Text('Inicio'),
        ));
  }
}
