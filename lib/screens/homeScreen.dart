import 'package:flutter/material.dart';
import 'CostsScreen.dart';
import 'PlannerScreen.dart';
import '../components/bodyHomeScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

int _indexSelect = 0;

class _HomeScreenState extends State<HomeScreen> {
  void _goCostScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CostsScreen()),
    );
  }

  void _goPlannerScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PlannerScreen()),
    );
  }

  //a função que sera usada no ontap para mostrar qual opção do app bar esta selecionada
  void _barItemSelect(int index) {
    setState(() {
      _indexSelect = index;
    });
    if (index == 2) {
      _goCostScreen(context);
    }
    // ignore: empty_statements
    ;
    if (index == 1) {
      _goPlannerScreen(context);
    }
    // ignore: empty_statements
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: buildAppBar(),
      body: BodyHomeScreen(),
      //Barra de opções
      bottomNavigationBar: BottomNavigationBar(
        //BottomaNavigationBarr.Shifting faz a bar mostrar somente o icone,quando o usuario faz o tap, a label e mostrada
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.brown,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_calendar),
            label: 'Planner',
            backgroundColor: Colors.brown,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Gastos',
            backgroundColor: Colors.brown,
          ),
        ],

        //Pega o index e de acordo com o clique,mostra qual item da bar esta selecionada
        currentIndex: _indexSelect,
        selectedItemColor: Colors.white,
        onTap: _barItemSelect,
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.brown[400],
    elevation: 0,
    title: Text(
      'Vlanner',
      style: TextStyle(
          fontFamily: 'Raleway', fontWeight: FontWeight.bold, fontSize: 20),
    ),
    leading: IconButton(
      icon: Icon(Icons.assignment_outlined),
      onPressed: () {},
    ),
  );
}
