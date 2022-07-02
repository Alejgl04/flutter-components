import 'package:flutter/material.dart';

class CustomCardTypeTwo extends StatelessWidget {
  
  final String imageUrl;
  final String? textCard;

  const CustomCardTypeTwo({
    Key? key, 
    required this.imageUrl, this.textCard
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15) ),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image:  NetworkImage( imageUrl ), placeholder: const  AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration( milliseconds: 300),
          ),
          if( textCard != null )
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only( right: 20, top: 10, bottom: 10 ),
              child: Text( textCard ?? '' )
            ),
        ],
      ),
    );
  }
}