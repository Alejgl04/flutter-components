import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
   
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text('ListView Type 1'),
      ),
      body: ListView(
        children: [
          Text('Hola mundo'),
          Text('Hola mundo'),
          Text('Hola mundo'),
          Text('Hola mundo'),
          Text('Hola mundo'),
          Text('Hola mundo'),
        ],
      )
    );
  }
}