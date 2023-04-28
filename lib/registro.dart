import 'package:fitnesspartner/inicioSesion.dart';
import 'package:flutter/material.dart';

class registro extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xffF8F6F6),
      appBar: AppBar(

        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [


            Text(
              'Registro de Usuario',
              style: TextStyle(color: Color(0xffF8F6F6)),
            ),
          ],
        ),
        backgroundColor: Color(0xffFD1C1C), //<-- SEE HERE
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.only(left: 15, top: 50, right: 15, bottom:15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre Completo',
                    hintText: 'Ingresa tu nombre completo con apellidos'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    labelText: 'Email',

                    hintText: 'Ingrese su email con el formato correcto'),
              ),
            ),



            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom:15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contraseña',
                    hintText: 'Ingrese una contraseña segura'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),

            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom:15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Teléfono',
                    hintText: 'Ingrese un número de teléfono de 10 digitos'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),

            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom:50),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Fecha de Nacimiento',
                    hintText: 'Ingrese la fecha de nacimiento con formato DD/MM/AA'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),

            Container(

              height: 50,
              width: 250,
              decoration: BoxDecoration(

                  color: const Color(0xffFD1C1C), borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => inicioSesion()));
                },
                child: const Text(
                  'Registrar',
                  style: TextStyle(color: Color(0xffF8F6F6), fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => inicioSesion()));
              },
              child: const Text(
                'Quieres regresar al inicio de sesión?',
                style: TextStyle(color: Color(0xffC31C50), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );







  }
}