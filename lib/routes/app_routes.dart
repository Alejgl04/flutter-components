
import 'package:flutter/material.dart';
import 'package:fl_widgets/models/models.dart';
import 'package:fl_widgets/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption( route: 'home' , name: 'Home', screen: const HomeScreen(), icon: Icons.home ),
    MenuOption( route: 'listview1' , name: 'List View Tipo 1', screen: const Listview1Screen(), icon: Icons.list ),
    MenuOption( route: 'alert' , name: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert ),
    MenuOption( route: 'card' , name: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card ),
    MenuOption( route: 'avatar' , name: 'Avatar Circle', screen: const AvatarScreen(), icon: Icons.supervised_user_circle ),
  ];

      static Map<String, Widget Function(BuildContext)> getAppRoutes() {
        Map<String, Widget Function(BuildContext)> appRoutes = {};
        for ( final option in menuOptions ) {
          appRoutes.addAll({  option.route : (BuildContext context) => option.screen });
        }
        return appRoutes;
      }

      // static Map<String, Widget Function(BuildContext)> routers1() {
      //   return {
      //     'home'     : (BuildContext context) => const HomeScreen(),
      //     'listview1': (BuildContext context) => const Listview1Screen(),
      //     'alert'    : (BuildContext context) => const AlertScreen(),
      //     'card'     : (BuildContext context) => const CardScreen(),
          
      //   };
      // }

    static Route<dynamic> onGenerateRoute ( RouteSettings settings) {
      return MaterialPageRoute(
        builder: ((context) => const AlertScreen())
      );
    }

}