import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho',
    'Nueve',
    'Diez'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets Temp'),
      ),
      body: ListView(
        children: _crearItems(),
      ),
    );
  }

  List<Widget> _crearItems() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.face, color: Colors.red.shade700),
            title: Text(
              item,
              style: TextStyle(color: Colors.blueAccent.shade700),
            ),
            trailing: Icon(Icons.arrow_right, color: Colors.red.shade700),
            subtitle: Text('cualquier cosa'),
          ),
          Divider(color: Colors.red.shade500),
        ],
      );
    }).toList();
  }
}
