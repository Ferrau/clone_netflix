import 'package:flutter/material.dart';

import '../componentes/cartel_principal.dart';
import '../componentes/item_redondeado.dart';

class InicioPage extends StatelessWidget{
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column( //alinea uno debajo de otro
        children: const <Widget>[ //le decimos que tipo es el array
          CartelPrincipal(),
          ItemRedondeado(),
        ], //children: hijos de columna
        
      ),
    );
  }
}