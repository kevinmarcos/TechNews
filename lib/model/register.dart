import 'package:flutter/material.dart';
import 'package:tech_newsfinal/main.dart';
import 'package:tech_newsfinal/service/consultarUsuario.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<Register> {
  String usuario = '';
  String gmail = '';
  String contrasenia = '';
  String confirmarContrasenia = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              const Text(
                'Register',
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
                    hintText: 'USUARIO',
                    labelText: 'Usuario',
                    suffixIcon: const Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onChanged: (valor) {
                  setState(() {
                    usuario = valor;
                  });
                },
              ),
              const Divider(
                height: 18.0,
              ),
              TextField(
                obscureText: false,
                enableInteractiveSelection: false,
                // autofocus: true,
                decoration: InputDecoration(
                    hintText: 'GMAIL',
                    labelText: 'Gmail',
                    suffixIcon: const Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onChanged: (valor) {
                  setState(() {
                    gmail = valor;
                  });
                },
              ),
              const Divider(
                height: 15.0,
              ),
              TextField(
                obscureText: false,
                enableInteractiveSelection: false,
                // autofocus: true,
                decoration: InputDecoration(
                    hintText: 'CONTRASEÑA',
                    labelText: 'Contraseña',
                    suffixIcon: Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onChanged: (valor) {
                  setState(() {
                    contrasenia = valor;
                  });
                },
              ),
              const Divider(
                height: 15.0,
              ),
              TextField(
                obscureText: false,
                enableInteractiveSelection: false,
                // autofocus: true,
                decoration: InputDecoration(
                    hintText: 'CONFIRMAR CONTRASEÑA',
                    labelText: 'Confirmar Contraseña',
                    suffixIcon: const Icon(Icons.verified_user),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onChanged: (valor) {
                  setState(() {
                    confirmarContrasenia = valor;
                  });
                },
              ),
              const Divider(
                height: 15.0,
              ),
              MaterialButton(
                minWidth: 350.0,
                height: 40.0,
                onPressed: () async {
                  await HttpService.register(usuario, contrasenia, context);
                  // ignore: use_build_context_synchronously
                  await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                color: Colors.lightBlue,
                child: const Text('Registrarse',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
