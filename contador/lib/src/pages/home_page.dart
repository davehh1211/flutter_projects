import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final textoEstilo = new TextStyle(fontSize: 25);

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Taps Number',
              style: textoEstilo,
            ),
            Text('$counter', style: textoEstilo)
          ],
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => {print('hola Mundo!')},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
