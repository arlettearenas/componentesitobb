import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  void _mostrarAlerts(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        barrierColor: Color.fromARGB(255, 90, 128, 216),
        builder: (context) {
          return AlertDialog(
              backgroundColor: Color.fromARGB(255, 144, 188, 227),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: const Text('Titulo de Alerta'),
              content: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contenido de la alerta'),
                  FlutterLogo(
                    size: 50.00,
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Aceptar')),
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancelar')),
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 183, 16, 186),
        title: const Text('Alerts screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlerts(context),
          child: const Text('Mostrar alertas'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Color.fromARGB(255, 211, 56, 185),
        child: const Icon(Icons.keyboard_return_outlined),
      ),
    );
  }
}
