
import 'package:flutter/material.dart';
import 'bandejaChat.dart';
import 'package:fitnesspartner/main.dart';
import 'registro.dart';
import 'registroCouch.dart';

class inicioSesion extends StatelessWidget {
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
              'Inicio de Sesión',
              style: TextStyle(color: Color(0xffF8F6F6)),
            ),
          ],
        ),
        backgroundColor: Color(0xffFD1C1C), //<-- SEE HERE
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: SizedBox(
                    width: 300,
                    height: 230,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/logo.png')),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding:
                  EdgeInsets.only(left: 15, top: 50, right: 15, bottom: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuario',
                    hintText: 'Ingrese un usuario valido como abc@gmail.com'),
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
                    labelText: 'Contraseña',
                    hintText: 'Ingrese una contraseña segura'),
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
                      context, MaterialPageRoute(builder: (_) => Home()));
                },
                child: const Text(
                  'Ingresar',
                  style: TextStyle(color: Color(0xffF8F6F6), fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => registro()));
              },
              child: const Text(
                'No tienes una cuenta, Crear una cuenta',
                style: TextStyle(color: Color(0xffC31C50), fontSize: 18),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => BandejaChat()));
              },
              child: const Text(
                'Quieres ser couch?',
                style: TextStyle(color: Color(0xffC31C50), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
