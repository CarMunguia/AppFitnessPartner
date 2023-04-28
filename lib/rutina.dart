import 'package:flutter/material.dart';

class Rutina extends StatelessWidget {
  const Rutina({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFD1C1C),
        title: const Text('Rutina de Entrenamiento'),
      ),
      body: Center(

        child: ListView(
          children: <Widget>[
            miCardImage(),
            miCardImage(),
            miCardImage(),
          ],
        ),


      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xffF8F6F6),
          child: ListView(
            // Importante: elimina cualquier padding del ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              Card(
                child: ListTile(
                  title: const Text('Lunes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffF8F6F6))),
                  tileColor: Color(0xffFD1C1C),
                  dense: true,
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Martes',
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  tileColor: Color(0xffF8F6F6),
                  onTap: () {
                    // // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Miércoles',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffF8F6F6))),
                  tileColor: Color(0xffFD1C1C),
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Jueves',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black)),
                  tileColor: Color(0xffF8F6F6),
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Viernes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffF8F6F6))),
                  tileColor: Color(0xffFD1C1C),
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Sábado',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black)),
                  tileColor: Color(0xffF8F6F6),
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    Navigator.pop(context);
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text('Domingo',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xffF8F6F6))),
                  tileColor: Color(0xffFD1C1C),
                  onTap: () {
                    // Actualiza el estado de la aplicación
                    // ...
                    // Luego cierra el drawer
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
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

        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Center(
                child: SizedBox(
                    width: 200,
                    height: 150,

                    child: Image.asset('assets/images/img_2.png')),
              ),
            ),
            Container(

              child: Text('Bench Press'),

            ),

          ],
        ),
      ));
}
