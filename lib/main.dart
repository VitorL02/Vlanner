import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';
import 'package:flutter/services.dart';
import 'screens/CostsScreen.dart';

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
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.brown[600],
              titleTextStyle: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              )),
          textTheme: TextTheme(
              subtitle: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
              // ignore: deprecated_member_use
              title: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 20,
              ))),
      title: 'Vlanner Planeje e se Organize',
      home: ScreenHome(),
      routes: {'/costs': (ctx) => CostsScreen()},
    );
  }
}
