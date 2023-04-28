import 'package:flutter/material.dart';


class Menu extends StatelessWidget{
  const Menu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xffFD1C1C),

        title: const Padding(
          padding: EdgeInsets.all(8.0),

          child: TextField(
            decoration: InputDecoration(
              hintText: 'Menú Alimenticio',
              fillColor: Color(0xffFD1C1C),
              filled: true,
              hintStyle: TextStyle(color: Color(0xffF8F6F6)),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: const Icon(Icons.restaurant),
            onPressed: () {

            }),
      ),
      body: Scrollbar(


        child: ListView(
          children: <Widget>[
            miCardImage(),
            miCardImage(),
            miCardImage(),
            miCardImage(),
            miCardImage(),
          ],
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

                      child: Image.asset('assets/images/img_1.png')),
                ),
              ),
              Container(

                child: Column(
                    children: const <Widget>[
                      Text("Avena con Leche",
                      style: TextStyle(color: Color(0xff000000), fontSize: 20),),

                      Text("80 gr de avena ",
                        style: TextStyle(color: Color(0xff000000), fontSize: 10),),
                    ]
                ),

              ),

            ],
        ),
      ));
}