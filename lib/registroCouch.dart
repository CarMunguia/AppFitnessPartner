import 'package:flutter/material.dart';

import 'inicioSesion.dart';

class RegistroCouch extends StatelessWidget {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          value: "primer", child: Text("200MXN mensuales, 30 asesorados")),
      const DropdownMenuItem(
          value: "segundo", child: Text("300MXN mensuales, 60 asesorados")),
      const DropdownMenuItem(
          value: "tercero", child: Text("500MXN mensuales, 200 asesorados")),
      const DropdownMenuItem(
          value: "cuarto", child: Text("1000MXN mensuales, 500 asesorados")),
    ];
    return menuItems;
  }

  String selectedValue = "primer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F6F6),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Registro de Couch',
              style: TextStyle(color: Color(0xffF8F6F6)),
            ),
          ],
        ),
        backgroundColor: const Color(0xffFD1C1C), //<-- SEE HERE
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding:
                  EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre Completo',
                    hintText: 'Ingresa tu nombre completo con apellidos'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 8, bottom: 8),
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
              padding:
                  EdgeInsets.only(left: 15, top: 8, right: 10, bottom: 8),
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
              padding:
                  EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Teléfono',
                    hintText: 'Ingrese un número de teléfono de 10 digitos'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 8, right: 15, bottom: 8),
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                value: selectedValue,
                items: dropdownItems,
                onChanged: (String? newValue) {
                  selectedValue = newValue!;
                },
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding:
                  EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Número de tarjeta',
                    hintText: 'Ingrese número de tarjeta débito/crédito'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding:
                  EdgeInsets.only(left: 15, top: 8, right: 15, bottom: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Fecha de Vencimiento',
                    hintText: 'MM/AA'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding:
                  EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CVC',
                    hintText: 'Los 3 digitos de atrás de tu tarjeta'),
                style: TextStyle(color: Color(0xffC31C50)),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => inicioSesion()));
                },
                child: const Text(
                  'Registrar',
                  style: TextStyle(color: Color(0xffF8F6F6), fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
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
