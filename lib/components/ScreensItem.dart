import 'package:flutter/material.dart';

import '../models/screenInformationsClass.dart';

class ScreensItem extends StatelessWidget {
  final ScreenInformation select;
  ScreensItem(this.select);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.purple[400],
      child: Container(
        margin: EdgeInsets.all(30),
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withOpacity(0.8)),
        child: FlatButton(
          onPressed: () {},
          child: Text(
            select.title,
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
    );
  }
}
