import 'package:flutter/material.dart';

import 'registroCouch.dart';
import 'homeCouch.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xffFD1C1C), Color(0xffC31C50)])),
              child: Container(
                width: double.infinity,
                height: 300.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://rtvc-informativo.s3.amazonaws.com/Messi-PSG-Jugador.jpg",
                        ),
                        radius: 50.0,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Lionel Andres Messi Cuccitini",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Color(0xffF8F6F6),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: const Color(0xffF8F6F6),
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 22.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: const <Widget>[
                                    Text(
                                      "Edad",
                                      style: TextStyle(
                                        color: Color(0xffFD1C1C),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "23 años",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: const <Widget>[
                                    Text(
                                      "Peso",
                                      style: TextStyle(
                                        color: Color(0xffFD1C1C),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "122 kg",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: const <Widget>[
                                    Text(
                                      "Estatura",
                                      style: TextStyle(
                                        color: Color(0xffFD1C1C),
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "1.90 mts",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Acerca de mi:",
                    style: TextStyle(
                        color: Color(0xffFD1C1C),
                        fontStyle: FontStyle.normal,
                        fontSize: 28.0),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Mi objetivo es aumentar mi masa muscular, actualmente tengo dos horas diarias 5 veces a la semana como disponibilidad de tiempo\n'
                    'No soy alergico a ningún alimento, y estoy realizando ejercicio en gimnasio, no tengo algún inpedimento médico para realizar ejercicio. tengo un presupuesto moderado para cubrir mi plan alimenticio.',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: const Color(0xffFD1C1C),
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Perfil()));
              },
              child: const Text(
                'Actualizar',
                style: TextStyle(color: Color(0xffF8F6F6), fontSize: 25),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => HomeCouch()));
            },
            child: const Text(
              'Quieres ser couch?',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xffC31C50),
                fontSize: 18,
              ),

            ),
          ),
        ],
      ),
    );
  }
}
