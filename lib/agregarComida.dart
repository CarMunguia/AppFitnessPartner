import 'package:flutter/material.dart';
import 'menuCouch.dart';

class AgregarComida extends StatelessWidget {
  const AgregarComida({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xffF8F6F6),
      appBar: AppBar(
        title: const Text('Agregar Comida'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const MenuCouch()));
            },
            ),
        backgroundColor: Color(0xffFD1C1C), //<-- SEE HERE
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding:
                  EdgeInsets.only(left: 15, top: 50, right: 15, bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Titulo de Comida',
                    hintText: 'Ingrese un titulo representativo de la comida'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 50),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descripción',
                    hintText:
                        'Ingrese la descripción de la comida, cantidades, ingredientes, especificaciones'),
              ),
            ),
            Padding(
              padding:const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 50),


                  child: ElevatedButton(
                  onPressed: () {

                  },
                    style: ElevatedButton.styleFrom(

                      primary: const Color(0xffC31C50), // Background color
                    ),
                  child: const Text('Upload Photo',
                  style: TextStyle(color: Color(0xffF8F6F6)),
                  ),
                ),

                //if image not null show the image
                //if image null show text

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
                      context, MaterialPageRoute(builder: (_) => MenuCouch()));
                },
                child: const Text(
                  'Guardar',
                  style: TextStyle(color: Color(0xffF8F6F6), fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );


  }
}



