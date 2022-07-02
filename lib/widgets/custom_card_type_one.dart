
import 'package:flutter/material.dart';

class CustomCardTypeOne extends StatelessWidget {
  const CustomCardTypeOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.photo_album_outlined , color: Colors.white ),
            title: Text('Alex'),
            subtitle: Text('Adipisicing deserunt non irure dolore commodo aliquip ut voluptate reprehenderit consequat pariatur pariatur')
          ),

          Padding(
            padding: const EdgeInsets.only( right: 5 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {},
                child: const Text('ok'),
                ),
                TextButton(onPressed: () {},
                child: const Text('Cancel')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}