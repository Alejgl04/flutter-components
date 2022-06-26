import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Nombre de ruta'),
          leading: const Icon( Icons.access_time_filled_outlined ),
          onTap: () {

            Navigator.pushNamed(context, 'alert');

          },
        ), 
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: 10
      )
    );
  }
}