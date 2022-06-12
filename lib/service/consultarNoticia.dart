import 'package:flutter/material.dart';
import 'package:tech_newsfinal/model/noticia.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class httpNot {
  Future<List<noticia>> _getnoticias() async {
    Uri r = Uri.parse(
        'https://technews-dot-technews-351916.uc.r.appspot.com/noticia');
    var data = await http.get(r);
    var jsonData = json.decode(data.body);

    List<noticia> noticias = [];

    for (var n in jsonData['entity']) {
      noticia noticia_ = noticia(n['titulo'], n['contenido'], n['img'],
          n['categoria'], n['referencia']);

      noticias.add(noticia_);
    }
    return noticias;
  }

  Widget consultar() {
    return FutureBuilder(
      future: _getnoticias(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data == null) {
          return Container(
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Row(
                      children: [
                        FadeInImage.assetNetwork(
                          placeholder: 'assets/logo.png',
                          image: snapshot.data[index].img,
                          width: 200,
                        ),
                        Expanded(
                            child: ListTile(
                          title: Text(
                            snapshot.data[index].titulo,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          subtitle: Text(snapshot.data[index].categoria,
                              // ignore: prefer_const_constructors
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 217, 230, 45),
                                  fontSize: 18),
                              textAlign: TextAlign.center),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        verNoticia(snapshot.data[index])));
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
