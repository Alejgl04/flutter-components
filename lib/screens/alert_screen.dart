import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void showAlertIOS( BuildContext context ) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido'),
              SizedBox( height: 10 ),
              FlutterLogo( size: 70 )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar', style: TextStyle( color: Colors.red),),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            ),
          ],
        );
      }
    );
  }

  void showAlertAndroid( BuildContext context ) {
    showDialog( barrierDismissible: false, context: context, builder: ( context ) {
      return AlertDialog(
        elevation: 5,
        shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10)),
        title: const Text('Titulo'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('Este es el contenido'),
            SizedBox( height: 10 ),
            FlutterLogo( size: 70 )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Ok'),
          ),
        ],
      );
     }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(

          onPressed: () => Platform.isAndroid 
            ? showAlertAndroid(context)
            : showAlertIOS( context ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15 ),
            child: Text('Mostrar alerta', style: TextStyle( fontSize:  16)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}