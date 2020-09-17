
import 'package:flutter/material.dart';

import 'package:formvalidation/src/models/producto_model.dart';
import 'package:url_launcher/url_launcher.dart';


bool isNumeric( String s ) {

  if ( s.isEmpty ) return false;

  final n = num.tryParse(s);

  return ( n == null ) ? false : true;

}


abrirScan(BuildContext context, ProductoModel scan ) async {
  
  if ( scan.fotoUrl != null) {

    if (await canLaunch( scan.fotoUrl )) {
      await launch(scan.fotoUrl);
    } else {
      throw 'Could not launch ${ scan.fotoUrl }';
    }


  } else {
    
    throw 'Could not launch ${ scan.fotoUrl }';
    //no se encontro

  }
}

void mostrarAlerta(BuildContext context, String mensaje ) {

  showDialog(
    context: context,
    builder: ( context ) {
      return AlertDialog(
        title: Text('Información incorrecta'),
        content: Text(mensaje),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: ()=> Navigator.of(context).pop(),
          )
        ],
      );
    }
  );


}