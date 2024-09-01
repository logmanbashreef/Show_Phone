import 'package:flutter/material.dart';



import 'package:flutter_application_1/product.dart';


void main() {

  runApp(MyApp());
  
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),useMaterial3: false
    ),
    home:  Product());
  }
  

}