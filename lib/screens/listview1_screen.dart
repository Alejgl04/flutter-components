import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const['Bloddy Roard', 'Counter Strike', 'Wow', 'Warcraft'];
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: const Text('ListView Type 1'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: ( context, index ) => ListTile(
          title: Text(options[index]),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color:  Colors.indigoAccent),
          onTap: () {
            final game = options[index];
            // ignore: avoid_print
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(), 
      )
    );
  }
}