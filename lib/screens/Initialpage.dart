import 'package:flutter/material.dart';
import 'package:vlanner/components/AppImages.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(AppImages.logo)));
  }
}
