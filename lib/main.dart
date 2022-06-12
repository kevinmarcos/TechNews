import 'package:flutter/material.dart';
import 'package:tech_newsfinal/model/noticia.dart';
import 'package:tech_newsfinal/service/consultarNoticia.dart';
import 'package:tech_newsfinal/components/componentesMain.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            return Scaffold(
              bottomNavigationBar: componentes().barraCategorias(),
              backgroundColor: Color.fromARGB(255, 22, 22, 22),
              appBar: AppBar(
                  title: componentes().appBarTN(),
                  backgroundColor: Colors.black),
              body: httpNot().consultar(),        
              
            );
          }
        ));
  }
}
