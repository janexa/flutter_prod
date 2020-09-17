import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LAMS')
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(context),
            _crearTitulo(),
            _crearAcciones(),
            SizedBox( height: 15.0 ),
            _crearTexto(),
            //_crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage('https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Quienes Somos', style: estiloTitulo ),
                  SizedBox( height: 7.0 ),
                  Text('Asesorias Contables y Tecnológicas', style: estiloSubTitulo ),
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 30.0 ),
            Text('41', style: TextStyle( fontSize: 20.0 ) )

          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        _accion( Icons.call, 'Cell' ),
        _accion( Icons.near_me, 'Ubicacion' ),
        _accion( Icons.share, 'Compartir'),

      ],
    );

  }

  Widget _accion(IconData icon, String texto ) {

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ), )
      ],
    );

  }

  Widget _crearTexto() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text(
          'Somos un grupo de profesionistas independientes enfocados en atender las necesidades administrativas, contables y financieras de las PyMEs, sean personas físicas o morales. ' 
          'Hemos establecido como política brindar atención personalizada, con el fin de cubrir sus necesidades y, con ello, estos puedan enfocarse en la administración plena de su negocio o empresa.',
          textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}