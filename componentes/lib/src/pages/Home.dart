// import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearListaItems(snapshot.data, context),
        );
      },
    );
    // print(menuProvider.opciones);
    // MenuProvider.cargarData().then((opciones) {
    //   print('_Lista');
    //   print(opciones);
    // });
    // return
  }

  List<Widget> _crearListaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        subtitle: Text('mean'),
        leading: getIcon(opt['icon']),
        // leading: Icon(Icons.account_circle, color: Colors.red[400]),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red[400]),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          //   final route = MaterialPageRoute(builder: (context) {
          //     return AlertPage();
          //   });
          //   Navigator.push(context, route);
        },
      );
      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;

    // return [
    //   ListTile(title: Text('test 1'),),
    //   Divider(),
    //   ListTile(title: Text('test 1'),),
    //   Divider(),
    //   ListTile(title: Text('test 1'),)
    // ];
  }
}
