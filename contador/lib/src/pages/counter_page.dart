import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage> {
  final _textoEstilo = new TextStyle(fontSize: 25);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter Stateful Widget'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Taps Number',
              style: _textoEstilo,
            ),
            Text('$_counter', style: _textoEstilo)
          ],
        )),
        floatingActionButton: _crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
        );
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(
          onPressed: _restart, child: Icon(Icons.exposure_zero)),
      Expanded(child: SizedBox()),
      FloatingActionButton(onPressed: _remove, child: Icon(Icons.remove)),
      SizedBox(width: 5.0),
      FloatingActionButton(onPressed: _add, child: Icon(Icons.add)),
      SizedBox(width: 5.0),
    ]);
  }

  void _add() {
    setState(() => _counter++);
  }

  void _remove() {
    setState(() => _counter--);
  }

  void _restart() {
    setState(() => _counter = 0);
  }
}
