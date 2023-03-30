import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputsScreens extends StatefulWidget {
  const InputsScreens({super.key});

  @override
  State<InputsScreens> createState() => _InputsScreensState();
}

class _InputsScreensState extends State<InputsScreens> {
  String _userName = '';
  String _password = '';
  String _email = '';
  String _fecha = '';
  final TextEditingController _inputFieldDateController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 7, 109),
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          const Divider(),
          const Divider(),
          _crearEntradaPswd(),
          const Divider(),
          const Divider(),
          _crearEntradaMail(),
          const Divider(),
          const Divider(),
          _crearEntradaFecha(),
        ],
      ),
    );
  }

  Widget _crearEntradaNombre() {
    return TextField(
        autofocus: true,
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          color: Color.fromARGB(255, 83, 80, 184),
          fontWeight: FontWeight.bold,
        ),
        cursorColor: Color.fromARGB(255, 244, 175, 198),
        cursorRadius: const Radius.circular(5.0),
        cursorWidth: 5.0,
        //maxLength: 20,
        maxLines: null,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Escribe tu nombre de usuario mi amorcito",
          labelText: "Nombre: ",
          //helperText: "Nombre",
          prefixIcon: const Icon(Icons.person),
          //iconColor: Color.fromARGB(255, 108, 106, 111),
          //prefix: const CircularProgressIndicator(),
        ),
        onChanged: (valor) {
          _userName = valor;
          print(_userName);
        });
  }

  Widget _crearEntradaPswd() {
    return TextField(
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          color: Color.fromARGB(255, 83, 80, 184),
          fontWeight: FontWeight.bold,
        ),
        cursorColor: const Color.fromARGB(255, 244, 175, 198),
        cursorRadius: const Radius.circular(5.0),
        cursorWidth: 5.0,
        maxLength: 8,
        obscureText: true,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Escribe tu password",
          labelText: "Password: ",
          //helperText: "Nombre",
          suffixIcon: const Icon(Icons.key),
          //iconColor: Color.fromARGB(255, 108, 106, 111),
          //prefix: const CircularProgressIndicator(),
        ),
        onChanged: (valor) {
          _userName = valor;
          print(_password);
        });
  }

  Widget _crearEntradaMail() {
    return TextField(
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          color: Color.fromARGB(255, 83, 80, 184),
          fontWeight: FontWeight.bold,
        ),
        cursorColor: const Color.fromARGB(255, 244, 175, 198),
        cursorRadius: const Radius.circular(5.0),
        cursorWidth: 5.0,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Escribe tu email",
          labelText: "Email: ",
          //helperText: "Nombre",
          prefixIcon: const Icon(Icons.email),
          //iconColor: Color.fromARGB(255, 108, 106, 111),
          //prefix: const CircularProgressIndicator(),
        ),
        onChanged: (valor) {
          _userName = valor;
          print(_email);
        });
  }

  Widget _crearEntradaFecha() {
    return TextField(
        controller: _inputFieldDateController,
        enableIMEPersonalizedLearning: false,
        textAlign: TextAlign.center,
        textCapitalization: TextCapitalization.sentences,
        style: const TextStyle(
          color: Color.fromARGB(255, 83, 80, 184),
          fontWeight: FontWeight.bold,
        ),
        cursorColor: const Color.fromARGB(255, 244, 175, 198),
        cursorRadius: const Radius.circular(5.0),
        cursorWidth: 5.0,
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: "Escriba su fecha de nacimiento ",
          labelText: "Fecha de nacimiento: ",
          //helperText: "Nombre",
          suffixIcon: const Icon(Icons.calendar_month),
          //iconColor: Color.fromARGB(255, 108, 106, 111),
          //prefix: const CircularProgressIndicator(),
        ),
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          _selectDate(context);
        });
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        print(_fecha);
        _fecha = DateFormat('dd-MM-yyyy').format(picked);
        _inputFieldDateController.text =
            _fecha; //Muestra la fechitabb en el textfield
      });
    }
  }
}
