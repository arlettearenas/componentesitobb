import 'package:componentes/providers/menu_provider.dart';
import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:componentes/utils/icons_mapping.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 86, 204),
        title: const Text('Componentes de Flutter'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  //recuperacion de datos de un archivo .json
  // print(menuProvider.opciones);
  // menuProvider.loadData().then((opciones) {
  //   print('_lista: ');
  //   print(opciones);
  // });
  //return ListView(
  // children: _listaItems(),
  // );
  return FutureBuilder(
    future: menuProvider.loadData(),
    initialData: const [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      //print('builder: ');
      //print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>, context),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  IconMapping iconMap = const IconMapping();

  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: iconMap.getIcon(opt['icon']),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Color.fromARGB(255, 241, 229, 241),
      ),
      subtitle: Text(opt['texto2']),
      onTap: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return const AlertsScreen();
        // });
        Navigator.pushNamed(context, opt['ruta']);
        //Navigator.push(context, route);
      },
    );
    opciones
      ..add(tile)
      ..add(const Divider());
  });
  return opciones;
  // return const [
  //   ListTile(
  //     title: Text('Pittsburgh Steelers'),
  //     subtitle: Text('El mejor equipo de la NFL y el maximo campeon'),
  //   ),
  //   Divider(
  //     thickness: 5.0,
  //     color: Colors.red,
  //   ),
  //   ListTile(
  //     title: Text('Marco'),
  //     subtitle: Text('es un comandante'),
  //   ),
  //   Divider(
  //     thickness: 5.0,
  //     color: Colors.blue,
  //   ),
  //   ListTile(
  //     title: Text('SV-001'),
  //     subtitle: Text('es un Tanque'),
  //   ),
  //   Divider(
  //     thickness: 5.0,
  //     color: Colors.green,
  //   ),
  // ];
}
