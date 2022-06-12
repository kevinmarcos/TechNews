/*
import 'package:flutter/material.dart';
import 'package:tech_newsfinal/service/consultarUsuario.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tech_newsfinal/components/componentesMain.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String usuario='';
  late String contrasenia='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login Page')),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              TextField(
                obscureText: false,
                decoration: InputDecoration(hintText: 'email'),
                onChanged: (value) {
                  setState(() {
                    usuario = value;
                  });
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Contraseña'),
                onChanged: (value) {
                  setState(() {
                    contrasenia = value;
                  });
                },
              ),
              InkWell(
                  onTap: () async {
                    if (usuario == '' || contrasenia == '') {
                      
                    } else {
                      componentes().bienvenido();
                      await HttpService.login(usuario, contrasenia, context);
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25)),
                  ))
            ],
          ),
        )
        // ignore: avoid_unnecessary_containers
        );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:tech_newsfinal/model/register.dart';
import 'package:tech_newsfinal/service/consultarUsuario.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tech_newsfinal/components/componentesMain.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({Key? key}) : super(key: key);

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  String user = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.0),
        children: <Widget>[
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/logo.png'),
            ),
            Text(
              'Login',
              style: TextStyle(fontFamily: 'NerkoOne', fontSize: 50.0),
            ),
            SizedBox(
              width: 160.0,
              height: 15.0,
              child: Divider(color: Colors.blueGrey[600]),
            ),
            TextField(
              obscureText: false,
              enableInteractiveSelection: false,
              // autofocus: true,
              decoration: InputDecoration(
                  hintText: 'USER-NAME',
                  labelText: 'User name',
                  suffixIcon: Icon(Icons.verified_user),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onChanged: (valor) {
                setState(() {
                  user = valor;
                });
              },
            ),
            Divider(
              height: 10.0,
            ),
            TextField(
              enableInteractiveSelection: false,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  suffixIcon: Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              onChanged: (valor) {
                setState(() {
                  password = valor;
                });
              },
            ),
            Divider(
              height: 13.0,
            ),
            MaterialButton(
              minWidth: 350.0,
              height: 40.0,
              onPressed: () async {
                if (user == '' || password == '') {
                  showDialog(
                      context: context,
                      // ignore: prefer_const_constructors
                      builder: (context) => AlertDialog(
                            content: const Text('Rellene los campos.'),
                          ));
                } else {
                  await HttpService.login(user, password, context);
                }
              },
              color: Colors.lightBlue,
              child: Text('Ingresar', style: TextStyle(color: Colors.white)),
            ),
            Divider(
              height: 13.0,
            ),
            Text('¿No estas registrado? '),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text('REGISTRATE'))
          ])
        ],
      ),
    );
  }
}
