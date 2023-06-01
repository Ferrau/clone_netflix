import 'package:clone_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget{
  const CartelPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
   
    
    return Column(
      children: <Widget> [
        cabecera(), //referenciamos a cabezera que esta dentro de la misma clase
         infoSerie(),  
         botonera(),     
      ], 
    );
  }

  Widget cabecera(){
    var colors2 = <Color>[
                    Colors.black38,
                    Colors.black
                  ];
    return Stack(
          children: <Widget> [

            Image.asset(
              'assets/imgs/portada.jpg',
              height: 350.0,
              fit: BoxFit.cover, //para que la imagen haga zoom y tome todo el contenedor
            ),
            Container(
              width: double.infinity,
              height: 350.0,
              //color: Colors.black45, //opaciidad a la imagen
              decoration: BoxDecoration(
                gradient: LinearGradient(//de manera lineal pasamos de un color a otro
                  begin: Alignment.center, //empieza a degradarse desde el centro
                  end: Alignment.bottomCenter,
                  colors: colors2
                )
              ),
            ),
            SafeArea(child: NavBarSuperior()),
          ],
        );
  }

  Widget infoSerie(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //alineamos al centro

      children: const <Widget>[
        Text(
          'Telenovelesco', 
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0), //espacio entre cajitas
        Icon(Icons.fiber_manual_record, color: Colors.red, size:5.0),
        SizedBox(width: 6.0), //espacio entre cajitas

        Text(
          'Suspenso insostenible',
          style: TextStyle(color: Colors.white, fontSize: 10.0),

        
        ),
        SizedBox(width: 6.0), //espacio entre cajitas
        Icon(Icons.fiber_manual_record, color: Colors.red, size:5.0),
        SizedBox(width: 6.0), //espacio entre cajitas
        Text(
          'De suspenso',
           style: TextStyle(color: Colors.white, fontSize: 10.0),

        
        ),
        SizedBox(width: 6.0), //espacio entre cajitas
        Icon(Icons.fiber_manual_record, color: Colors.red, size:5.0),
        SizedBox(width: 6.0), //espacio entre cajitas
        Text(
          'Adolescentes',
          style: TextStyle(color: Colors.white, fontSize: 10.0),

        
        ),
      ],
    );
  }

  Widget botonera(){
 
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0), //le agrega espacios arriba y abajo

      child: Row(
        //Manipulamos el espacio
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //alineamos al centro
        children: <Widget>[
          //Columna: para que este una debajo de otra
          Column(
            children:  const <Widget>[
              Icon(Icons.check, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                'Mi lista', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0, 
                ),
              )
            ],
          ),
          //onPressed: funcion - se ejecuta cuando le das click
          TextButton.icon(
            onPressed: (){},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Color de fondo del botón
            ),
            icon: const Icon(
              Icons.play_arrow, 
              color: Colors.black,
            ), 
            label: const Text(
              'Reproducir',
              style: TextStyle(
              color: Colors.black, // Color del texto "Reproducir"
              ),
            ),
          ),
          
          Column(
            children:  const <Widget>[
            Icon(Icons.info_outline, color: Colors.white),
              SizedBox(height: 3.0),
              Text(
                'Información', 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0, 
                ),
              )
            ],
          ),
        ],
      ),
    );

  }

}


