import 'package:flutter/material.dart';

class CentralBoxInformation extends StatelessWidget {
  const CentralBoxInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(55),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
            Container(
              // alignment: AlignmentDirectional(-80, 40),
              // padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text('Nome ',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.subtitle),
                  // ignore: deprecated_member_use
                  Text('Tarefas Restante: ',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.subtitle),
                  Text('Dinheiro Restante: ',
                      // ignore: deprecated_member_use
                      style: Theme.of(context).textTheme.subtitle),
                ],
              ),
            ),
          ],
        ),
      ),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(25),
        ),
        gradient: LinearGradient(
          colors: [Colors.brown[300].withOpacity(0.87), Colors.brown[300]],
        ),
      ),
    );
  }
}
