import 'package:flutter/material.dart';
import 'CostsScreen.dart';
import 'PlannerScreen.dart';
import '../components/informationPendences.dart';

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
    // ignore: empty_statements
    ;
    if (index == 1) {
      _goPlannerScreen(context);
    }
    // ignore: empty_statements
    ;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[50].withOpacity(1),
        appBar: AppBar(
          backgroundColor: Colors.brown[300],
          title: Text(
            'Vlanner',
            style: TextStyle(
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Column(
              children: <Widget>[
                Container(
                    height: 160,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Row(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 30),
                              child: CircleAvatar(
                                radius: 34,
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Text('Nome ',
                                      // ignore: deprecated_member_use
                                      style:
                                          Theme.of(context).textTheme.subtitle),
                                  // ignore: deprecated_member_use
                                  Text('Tarefas Restante: ',
                                      // ignore: deprecated_member_use
                                      style:
                                          Theme.of(context).textTheme.subtitle),
                                  Text('Dinheiro Restante: ',
                                      // ignore: deprecated_member_use
                                      style:
                                          Theme.of(context).textTheme.subtitle),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(25),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.brown[300].withOpacity(1),
                            Colors.brown[300]
                          ],
                        ))),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment(-0.9, -0.9),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Se organize!',
                                      style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 150),
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: FloatingActionButton(
                                      backgroundColor:
                                          Colors.red.withOpacity(0.8),
                                      child: Icon(Icons.calendar_today),
                                      onPressed: () =>
                                          _goPlannerScreen(context)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InformationPendences(),
                        InformationPendences(),
                        InformationPendences(),
                      ],
                    )),
                Container(
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment(-0.9, -0.9),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Suas Finanças!',
                                      style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87)),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 120),
                                child: SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: FloatingActionButton(
                                      backgroundColor:
                                          Colors.green[400].withOpacity(0.8),
                                      child: Icon(Icons.attach_money_outlined),
                                      onPressed: () => _goCostScreen(context)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InformationPendences(),
                        InformationPendences(),
                        InformationPendences(),
                      ],
                    )),
              ],
            )
          ]),
        ),
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
