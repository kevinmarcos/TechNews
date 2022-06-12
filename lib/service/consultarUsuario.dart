import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:tech_newsfinal/components/componentesMain.dart';
import 'package:tech_newsfinal/main.dart';
import 'package:tech_newsfinal/model/usuario.dart';

class HttpService {
  static final _client = http.Client();

  static final _loginUrl = Uri.parse(
      'https://technews-dot-technews-351916.uc.r.appspot.com/usuario');

  static final _registerUrl = Uri.parse(
      'https://technews-dot-technews-351916.uc.r.appspot.com/usuario');

  static login(user, password, context) async {
    http.Response response = await _client.get(
      _loginUrl,
    );

    if (response.statusCode == 200) {
      bool exitente = false;
      var json = jsonDecode(response.body);
      for (var element in json['entity']) {
        Usuario usuario_ = Usuario(element['usuario'], element['contrasenia']);
        if (usuario_.usuario == user && usuario_.contrasenia == password) {
          exitente = true;
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text(
                      'TECH NEWS',
                      style: TextStyle(fontSize: 30),
                    ),
                    content: Row(
                      children: [
                        Icon(Icons.person),
                        Text(
                          'Bienvenido $user',
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ));
          await Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyApp()));
        }
      }

      if (exitente == false) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  backgroundColor: Colors.white,
                  title: Text(
                    'TECH NEWS',
                    style: TextStyle(fontSize: 30),
                  ),
                  content: Row(
                    children: [
                      Icon(Icons.person),
                      Text(
                        'Usuario Inexistente',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ));
      }
    }
  }

  static register(usuario, contrasenia, context) async {
    var response = await http.post(_registerUrl,
        body: {'usuario': usuario, 'contrasenia': contrasenia});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
