import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  // InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _date = '';
  String _optselected = 'Opt2';

  List<String> _poderes = ['Opt1', 'Opt2', 'Opt3', 'Opt4'];

  TextEditingController _inputFieldDate = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Hello')),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            _crearInput(),
            Divider(),
            _crearEmail(),
            Divider(),
            _crearPassword(),
            Divider(),
            _crearFecha(context),
            Divider(),
            _crearDropdown(),
            Divider(),
            _crearPersona(),
          ],
        ));
  }

  Widget _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Nombre de la persona',
          labelText: 'Nombre',
          helperText: 'Solo es el nombre',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
      onChanged: (valor) {
        _nombre = valor;
        print(_nombre);
        setState(() {});
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Mi nombre es: $_nombre'),
      subtitle: Text('Mi email is: $_email'),
      trailing: Text(_optselected),
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
          hintText: 'Email de la persona',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        _email = valor;
        print(_email);
        setState(() {});
      },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        hintText: 'Password de la persona',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
      ),
      onChanged: (valor) {
        _password = valor;
        print(_password);
        setState(() {});
      },
    );
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDate,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        hintText: 'Fecha',
        labelText: 'Fecha',
        suffixIcon: Icon(Icons.calendar_today),
        icon: Icon(Icons.calendar_today),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        initialDate: new DateTime.now(),
        locale: Locale('es', 'ES'));
    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDate.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOptionDrop() {
    List<DropdownMenuItem<String>> lista = new List();
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        DropdownButton(
          value: _optselected,
          items: getOptionDrop(),
          onChanged: (opt) {
            print(opt);
            setState(() {
              _optselected = opt;
            });
          },
        )
      ],
    );
  }
}
