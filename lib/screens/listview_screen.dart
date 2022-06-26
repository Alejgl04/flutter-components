import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final options = const['Bloddy Roard', 'Counter Strike', 'Wow', 'Warcraft'];
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
          ...options.map((e) => 
          ListTile(
            title: Text(e),
            trailing: const Icon( Icons.arrow_forward_ios_outlined),
          )
          ).toList()
        ],
      )
    );
  }
}