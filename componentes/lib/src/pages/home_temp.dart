import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const HomePage({Key key}) : super(key: key);

  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(children: _crearItemscorto()),
    );
    // Center(child: Text('home temp'));
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (var option in options) {
  //     final tempwidget = ListTile(
  //       title: Text(option),
  //     );
  //     lista.add(tempwidget);
  //     lista.add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemscorto() {
    var widgets = options.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('It is a part of this title'),
            leading: Icon(Icons.account_box),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();

    return widgets;
  }
}
