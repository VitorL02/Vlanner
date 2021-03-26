import 'package:flutter/material.dart';
import 'CostsScreen.dart';
import 'PlannerScreen.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

int _indexSelect = 0;

class _ScreenHomeState extends State<ScreenHome> {
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
    ;
    if (index == 1) {
      _goPlannerScreen(context);
    }
    ;
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
                  margin: EdgeInsets.all(15),
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
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Text('AH'),
                      ),
                      Align(
                        alignment: Alignment(0.60, -0.80),
                        child: Container(
                          child: Card(
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text('Nome ',
                                    style:
                                        Theme.of(context).textTheme.subtitle),
                                Text('Tarefas Restante: ',
                                    style:
                                        Theme.of(context).textTheme.subtitle),
                                Text('Dinheiro Restante: ',
                                    style:
                                        Theme.of(context).textTheme.subtitle),
                              ],
                            ),
                          ),
                        ),
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
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue[100].withOpacity(0.8),
                        Colors.blue[400]
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () => _goCostScreen(context),
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
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple[400].withOpacity(0.8),
                        Colors.purple[700]
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () => _goPlannerScreen(context),
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
        ));
  }
}
