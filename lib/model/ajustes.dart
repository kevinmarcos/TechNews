import 'package:flutter/material.dart';
import 'package:tech_newsfinal/components/componentesMain.dart';
import 'package:tech_newsfinal/main.dart';
import 'package:tech_newsfinal/model/login.dart';

class ajustes extends StatefulWidget {
  const ajustes({Key? key}) : super(key: key);

  @override
  State<ajustes> createState() => _ajustes();
}

class _ajustes extends State<ajustes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(builder: (context) {
          return Scaffold(
              bottomNavigationBar: componentes().barraCategorias(),
              backgroundColor: Color.fromARGB(255, 22, 22, 22),
              appBar: AppBar(
                  title: Builder(builder: (context) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.keyboard_double_arrow_left),
                          iconSize: 30,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyApp()));
                          },
                        ),
                        const Image(
                          image: AssetImage("assets/logo.png"),
                          width: 45,
                        ),
                        const Text(
                          "AJUSTES",
                          style: TextStyle(fontSize: 35),
                        ),
                        IconButton(
                          iconSize: 30,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyAppForm()));
                          },
                          icon: const Icon(Icons.person),
                        ),
                      ],
                    );
                  }),
                  backgroundColor: Colors.black),
              body: Column(
                children: <Widget>[
                  Container(
                    color: Color.fromARGB(255, 109, 103, 103),
                    height: 80,
                    child: Row(
                      children: <Widget>[
                        
                        SizedBox(width: 30),
                        Text(
                          "AJUSTES",
                          style: TextStyle(fontSize: 45, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.password_rounded, color: Colors.white,),
                    textColor: Colors.white,
                    title: const Text(
                      "Cambio de Contraseña",
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text('Deshabilitado', style: TextStyle(color: Colors.red),),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.security, color: Colors.white,),
                    textColor: Colors.white,
                    title: const Text(
                      "Privacidad y Seguridad",
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text('Deshabilitado', style: TextStyle(color: Colors.red),),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.notification_important, color: Colors.white,),
                    textColor: Colors.white,
                    title: const Text(
                      "Notificaciónes",
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text('Deshabilitado', style: TextStyle(color: Colors.red),),
                  ),
                  ListTile(
                    onTap: (){},
                    leading: Icon(Icons.color_lens, color: Colors.white,),
                    textColor: Colors.white,
                    title: const Text(
                      "Temas",
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text('Deshabilitado', style: TextStyle(color: Colors.red),),
                  ),
                ],
              ));
        }));
  }
}
