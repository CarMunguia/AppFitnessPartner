import 'package:flutter/material.dart';
import 'perfil.dart';
import 'inicio.dart';

class Chat extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFD1C1C),
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context, MaterialPageRoute(builder: (_) => const Inicio()));
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://rtvc-informativo.s3.amazonaws.com/Messi-PSG-Jugador.jpg"),
                  maxRadius: 20,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        "Miguel Munguia",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "En Linea",
                        style: TextStyle(
                            color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                 IconButton(

                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const Perfil()));
                    },
                  icon : const Icon(Icons.more_vert,
                  color: Colors.white,
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              height: 60,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xffC31C50),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Escribe un mensaje...",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    backgroundColor: const Color(0xffC31C50),
                    elevation: 0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
