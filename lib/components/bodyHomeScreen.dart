import 'package:flutter/material.dart';

class BodyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Responsividade
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          //Cobre 20% do total disponivel
          height: size.height * 0.27,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 18, right: 40, bottom: 76),
                height: size.height * 0.27 - 25,
                decoration: BoxDecoration(
                  color: Colors.brown[400],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Olá User',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Economias Restantes',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Nunito', fontSize: 19),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  height: 45,
                  child: Center(
                      child: Text(
                    'R\$ Você ta rico em !!',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontSize: 17,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(offset: Offset(0, 10), color: Colors.brown),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
