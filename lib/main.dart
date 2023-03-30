import 'package:componentes/ui/screens/screens.dart';
import 'package:componentes/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Componentes',
        debugShowCheckedModeBanner: false,
        // localizationsDelegates: const [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        // ],
        supportedLocales: [
          Locale('en', 'US'),
          //Locale('es', 'ES')
        ],
        //home: HomePageTemp(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const HomePageTemp(),
          'alert': (BuildContext context) => const AlertsScreen(),
          'inputs': (BuildContext context) => const InputsScreens(),
        },
        onGenerateRoute: (RouteSettings settings) {
          print('Rutitabb llamada: ${settings.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => const AlertsScreen());
        },
        theme: AppTheme.darkTheme);
  }
}
