
import 'package:flutter/material.dart';

import 'package:fl_widgets/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          
          CustomCardTypeOne(),
          SizedBox(height: 10),
          CustomCardTypeTwo(textCard: 'Un Hermoso paisaje', imageUrl: 'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000'),
          SizedBox(height: 10),
          CustomCardTypeTwo(imageUrl: 'https://thumbs.dreamstime.com/b/paisajes-hermosos-de-la-monta%C3%B1a-de-la-ca%C3%ADda-46574869.jpg',),
          SizedBox(height: 10),
          CustomCardTypeTwo(imageUrl: 'https://www.blogdelfotografo.com/wp-content/uploads/2020/04/fotografo-paisajes.jpg')
        ],
      )
    );
  }
}
