import 'package:flutter/material.dart';
import 'package:tech_newsfinal/model/login.dart';
import 'package:tech_newsfinal/model/ajustes.dart';

class componentes {
  Widget appBarTN() {
    return Center(
      child: Builder(builder: (context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Image(
              image: AssetImage("assets/logo.png"),
              width: 45,
            ),
            const Text(
              "TECH NEWS",
              style: TextStyle(fontSize: 35),
            ),
            IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyAppForm()));
              },
              icon: const Icon(Icons.person),
            ),
            Expanded(
              child: IconButton(
                iconSize: 30,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ajustes()));
                },
                icon: const Icon(Icons.menu),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget barraCategorias() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 70,
      curve: Curves.easeIn,
      color: const Color.fromARGB(255, 92, 92, 92),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text(
              "JUEGOS",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "EMPRESAS",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "PROGRAMAS",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "INNOVACIÓN",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
