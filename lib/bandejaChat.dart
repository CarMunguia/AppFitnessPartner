import 'package:fitnesspartner/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BandejaChat extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xffF8F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xffFD1C1C),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Buscar Couches',
              fillColor: Color(0xffFD1C1C),
              filled: true,
              hintStyle: TextStyle(color: Color(0xffF8F6F6)),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(icon: const Icon(Icons.search), onPressed: () {}),
      ),
      body: Scrollbar(


            child: ListView(
              children: const <Widget>[
                CardMenu(),
                CardMenu(),
              ],
            ),


      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  const CardMenu({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://rtvc-informativo.s3.amazonaws.com/Messi-PSG-Jugador.jpg"),
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Manuel Alberto',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Hola ya terminaste lo de Móviles?',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '12:05',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
