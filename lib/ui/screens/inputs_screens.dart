import 'package:flutter/material.dart';

class InputsScreens extends StatefulWidget {
  const InputsScreens({super.key});

  @override
  State<InputsScreens> createState() => _InputsScreensState();
}

class _InputsScreensState extends State<InputsScreens> {
  String _userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 94, 7, 109),
        title: const Text('Entradas de datos por el usuario'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearEntradaNombre(),
          _crearEntradaPswd(),
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
          hintText: "Escribe tu nombre de ususario mi amorcito",
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
        autofocus: true,
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
          print(_userName);
        });
  }
}
