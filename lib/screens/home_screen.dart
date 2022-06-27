import 'package:flutter/material.dart';
import 'package:fl_widgets/routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text( menuOption[index].name ),
          leading: Icon( menuOption[index].icon, color: Colors.indigo, ),
          onTap: () {

            Navigator.pushNamed(context, menuOption[index].route );

          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: menuOption.length
      )
    );
  }
}