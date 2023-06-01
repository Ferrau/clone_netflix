import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget{
  const ItemRedondeado({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Stack( //pila: uno encima de otro
      children: <Widget>[
        //ClipOval: Corta la imagen para que quede circular
        Container(
          height: 110.0,
          width: 110.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110.0),
            border: Border.all(
              color: Colors.yellow,
              width: 2.0,

            ),
          
          ),
          
          child: ClipOval(
            child: Image.asset(
            'assets/imgs/rapidosyfuriosos.jpg',
            fit:BoxFit.cover,
            ),
            
          )
        )
      ],

    );
    
  }
}