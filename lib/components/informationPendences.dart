import 'package:flutter/material.dart';

class InformationPendences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 15),
          child: SizedBox(
            width: 42,
            height: 42,
            child: FloatingActionButton(
              child: Icon(Icons.alarm),
              backgroundColor: Colors.teal[300],
              onPressed: () {},
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          child: Text(
            'Tarefas Pendentes',
            style: TextStyle(
                fontFamily: 'Cairo', fontSize: 17, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
