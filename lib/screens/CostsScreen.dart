import 'package:flutter/material.dart';
import 'package:vlanner/models/screenInformationsClass.dart';
import '../data/ScreensData.dart';

class CostsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final select =
        ModalRoute.of(context).settings.arguments as ScreenInformation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle seus gastos!'),
      ),
      body: Center(
        child: Text('Seus gastos'),
      ),
    );
  }
}
