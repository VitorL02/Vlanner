import 'package:flutter/material.dart';
import 'CostsScreen.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

int _indexSelect = 0;

class _ScreenHomeState extends State<ScreenHome> {
  //a função que sera usada no ontap para mostrar qual opção do app bar esta selecionada
  void _barItemSelect(int index) {
    setState(() {
      _indexSelect = index;
      print(_indexSelect);
    });
  }

  void _goScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CostsScreen()),
    );
  }

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
        body: Column(children: [
          Column(
            children: [
              Container(
                  margin: EdgeInsets.all(20),
                  height: 170,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          'Bem vindo',
                          textAlign: TextAlign.center,
                          // ignore: deprecated_member_use
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Card(
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                            child: Container(
                              child: Text('nome '),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  )),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(30),
                height: 160,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.8)),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () => _goScreen(context),
                  child: Text(
                    'Controle de despesas',
                    textAlign: TextAlign.center,
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(30),
                height: 160,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white.withOpacity(0.8)),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () => _goScreen(context),
                  child: Text(
                    'Planner',
                    textAlign: TextAlign.center,
                    // ignore: deprecated_member_use
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
              ),
            ],
          ),
        ]),
        //Barra de opções
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.brown,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_calendar),
              label: 'Planner',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: 'Gastos',
            ),
          ],

          //Pega o index e de acordo com o clique,mostra qual item da bar esta selecionada
          currentIndex: _indexSelect,
          selectedItemColor: Colors.brown[100],
          onTap: _barItemSelect,
        ));
  }
}
