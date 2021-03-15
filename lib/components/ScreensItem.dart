import 'package:flutter/material.dart';

import '../models/screenInformationsClass.dart';

class ScreensItem extends StatelessWidget {
  final ScreenInformation select;

  ScreensItem(this.select);

  void _goScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      '/costs',
      arguments: select,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white.withOpacity(0.8)),
      child: FlatButton(
        onPressed: () => _goScreen(context),
        child: Text(
          select.title,
          style: Theme.of(context).textTheme.title,
        ),
      ),
    );
  }
}
