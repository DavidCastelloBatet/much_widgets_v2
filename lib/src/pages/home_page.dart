import 'package:flutter/material.dart';
//import 'package:much_widgets/src/pages/alert_page.dart';
import 'package:much_widgets/src/providers/menu_provider.dart';
import 'package:much_widgets/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Muchos Widgets'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    //menuProvider.cargarData()

    //return ListView(
    //children: _listaItems(),
    //);

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    return data.map((dat) {
      return Column(
        children: [
          ListTile(
            leading: getIcon(dat['icon']),
            title: Text(dat['texto']),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
            onTap: () {
              // navegacion con ruta dinámica
              Navigator.pushNamed(context, dat['ruta']);
              // navegacion simple
              //final route =
              //MaterialPageRoute(builder: (context) => AlertPage());
              //Navigator.push(context, route);
            },
          ),
          Divider(height: 2.0, color: Colors.blue),
        ],
      );
    }).toList();
  }
}
