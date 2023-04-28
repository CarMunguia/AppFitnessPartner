import 'homeCouch.dart';
import 'agregarRutina.dart';
import 'package:flutter/material.dart';

class RutinaCouch extends StatelessWidget {
  const RutinaCouch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xffF8F6F6),
      appBar: AppBar(
        title: const Text('Agregar Plan Entrenamiento'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const HomeCouch()));
          },
        ),
        backgroundColor: Color(0xffFD1C1C), //<-- SEE HERE
      ),

      body: Center(
        child: ListView(
          children: const <Widget>[
            CardMenu(),
            CardMenu(),
            CardMenu(),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => AgregarRutina()));
        },
        backgroundColor: const Color(0xffC31C50),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  const CardMenu({super.key});

  @override
  Widget build(BuildContext context) {
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
                    width: 150,
                    height: 120,
                    child: Image.asset('assets/images/img_2.png')),
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Press de Banca",
                    style: TextStyle(color: Color(0xff000000), fontSize: 20),
                  ),
                  const Text(
                    "12 x 4 descanso de 2 minutos entre cada serie ",
                    style: TextStyle(color: Color(0xff000000), fontSize: 10),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => AgregarRutina()));

                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => RutinaCouch()));
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


