import 'package:flutter/material.dart';
import '../data/ScreensData.dart';
import '../components/ScreensItem.dart';

class ScreenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200].withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: Colors.brown[600],
        title: Text(
          'Vlanner',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: ScreenData.map((slc) {
            return ScreensItem(slc);
          }).toList()),
    );
  }
}
