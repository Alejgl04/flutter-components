import 'package:fl_widgets/screens/screens.dart';
import 'package:flutter/material.dart';


void main() => runApp( const MyApp() );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const CardScreen(),
      initialRoute: 'home',
      routes: {
        'home'     : (BuildContext context) => const HomeScreen(),
        'listview1': (BuildContext context) => const Listview1Screen(),
        'alert'    : (BuildContext context) => const AlertScreen(),
        'card'     : (BuildContext context) => const CardScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: ((context) => const AlertScreen())
        );
      },
    );
  }
}