import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  // const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Mostrar Alerta'),
            onPressed: () => _showAlert(context),
            color: Colors.green[800],
            textColor: Colors.white,
            shape: StadiumBorder()),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.settings_backup_restore),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text('titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de alerta'),
                FlutterLogo(size: 100.0)
              ],
            ),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK')),
              FlatButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar'),
              ),
            ],
          );
        });
  }
}
