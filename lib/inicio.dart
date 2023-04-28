import 'package:flutter/material.dart';
import 'chat.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFD1C1C),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar Conversacion',
              fillColor: Color(0xffFD1C1C),
              filled: true,
              hintStyle: TextStyle(color: Color(0xffF8F6F6)),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.search), onPressed: () {}),
      ),
      body: Center(
        // child: R(

        child: ListView(
          children: <Widget>[
            miCardImage(),
            miCardImage(),
            miCardImage(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Chat()));
        },
        backgroundColor: const Color(0xffC31C50),
        child: const Icon(Icons.chat),
      ),
    );
  }
}

Card miCardImage() {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(15),
      elevation: 10,

      // Dentro de esta propiedad usamos ClipRRect
      child: ClipRRect(
        // Los bordes del contenido del card se cortan usando BorderRadius
        borderRadius: BorderRadius.circular(30),

        // EL widget hijo que será recortado segun la propiedad anterior
        child: Column(
          children: <Widget>[
            // Usamos el widget Image para mostrar una imagen

            Image.asset('assets/images/img.png'),

            // Usamos Container para el contenedor de la descripción
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text('Alessandro Montes de Oca'),
            ),
            Container(
              child: Text('Costo Mensual: 300MXN'),
            ),
            Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  color: const Color(0xffFD1C1C),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context, MaterialPageRoute(builder: (_) => const Perfil()));
                },
                child: const Text(
                  'Suscribirme',
                  style: TextStyle(color: Color(0xffF8F6F6), fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ));
}
