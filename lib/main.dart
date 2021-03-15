import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';
import 'package:flutter/services.dart';

main() => runApp(Vlanner());

class Vlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //para celulares que possuem a status bar logo em baixo
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.brown[200],
          systemNavigationBarDividerColor: Colors.brown[200],
          systemNavigationBarColor: Colors.brown[200]),
    );

    return MaterialApp(
      color: Colors.brown[200],
      theme: ThemeData(
          textTheme: TextTheme(
              title: TextStyle(
        fontFamily: 'Nunito',
        fontSize: 20,
        color: Colors.indigo[600],
      ))),
      title: 'Vlanner Planeje e se Organize',
      home: ScreenHome(),
    );
  }
}
