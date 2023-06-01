import 'package:clone_netflix/paginas/inicio.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp()); //widget principal
}

//WIDGEST: son clases
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //wrapper:: componente que encapsula una funcionalidad
    return MaterialApp(
      //esqueleto de mi app
        home: InicioPage(),
      
    );  
    
  }
}