import 'perfilCouch.dart';
import 'package:flutter/material.dart';
import 'chat.dart';
import 'menuCouch.dart';
import 'rutinaCouch.dart';

class HomeCouch extends StatelessWidget {
  const HomeCouch({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFD1C1C),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar Suscriptor',
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
        child: ListView(
          children: const <Widget>[
            CardSuscriptores(),
            CardSuscriptores(),
            CardSuscriptores(),
          ],
        ),
      ),
    );
  }
}

class CardSuscriptores extends StatelessWidget {
  const CardSuscriptores({super.key});

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

                      child: Image.asset('assets/images/suscriptor.png')),
                ),
              ),
              Container(

                child: Row(
                    children: <Widget>[
                      IconButton(

                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Chat()));
                        },
                        icon: const Icon(Icons.chat,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                      IconButton(

                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => RutinaCouch()));
                        },
                        icon: const Icon(Icons.assignment_add,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                      IconButton(

                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => MenuCouch()));
                        },
                        icon: const Icon(Icons.restaurant,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),

                      IconButton(

                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const PerfilCouch()));
                        },
                        icon: const Icon(Icons.more_vert,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ),
                    ]
                ),

              ),

            ],
          ),
        ));
  }
}