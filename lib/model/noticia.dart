import 'package:flutter/material.dart';
import 'package:tech_newsfinal/components/componentesMain.dart';

class noticia {
  String categoria = "";
  String titulo = "";
  String contenido = "";
  String img = "";
  String referencia = "";

  noticia(
      this.titulo, this.contenido, this.img, this.categoria, this.referencia);
}

class verNoticia extends StatelessWidget {
  final noticia Noticia;
  verNoticia(this.Noticia);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: componentes().barraCategorias(),
        backgroundColor: Color.fromARGB(255, 22, 22, 22),
        appBar: AppBar(
            title: componentes().appBarTN(), backgroundColor: Colors.black),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/logo.png',
                      image: Noticia.img,
                      width: 350,
                    ),
                  ),
                  Title(
                      color: Colors.white,
                      child: Text(Noticia.titulo,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 25))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Text(
                      Noticia.contenido,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
                    child: Text(
                      'Más Información: \n' + Noticia.referencia,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 45,
                        icon: Image.network('https://cdn2.hubspot.net/hubfs/521324/youtube%20icon.png'),
                        onPressed: (){},
                         color: Colors.white,
                      ),
                      IconButton(
                        iconSize: 45,
                        icon: Image.network('https://play-lh.googleusercontent.com/5pZMqQYClc5McEjaISPkvhF8pDmlbLqraTMwk1eeqTlnUSjVxPCq-MItIrJPJGe7xW4'),
                        onPressed: (){},
                         color: Colors.white,
                      ),
                      IconButton(
                        iconSize: 45,
                        icon: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/640px-Instagram-Icon.png'),
                        onPressed: (){},
                         color: Colors.white,
                      ),
                      IconButton(
                        iconSize: 45,
                        icon: Image.network('https://play-lh.googleusercontent.com/tT_cdvQunsvESsJKAwiEUFUrTDak8foyjX_DLgp3BdNiBcPsh5ttjHcAE0QapZnmOYlr'),
                        onPressed: (){},
                         color: Colors.white,
                      ),
                      
                    ],
                  )
                ],
              ),
            )));
  }
}
