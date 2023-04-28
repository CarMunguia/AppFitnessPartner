import 'package:flutter/material.dart';
import 'rutinaCouch.dart';


class AgregarRutina extends StatelessWidget {


  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          value: "lunes", child: Text("Lunes")),
      const DropdownMenuItem(
          value: "martes", child: Text("Martes")),
      const DropdownMenuItem(
          value: "miercoles", child: Text("Miércoles")),
      const DropdownMenuItem(
          value: "jueves", child: Text("Jueves")),
      const DropdownMenuItem(
          value: "viernes", child: Text("Viernes")),
      const DropdownMenuItem(
          value: "sabado", child: Text("Sábado")),
      const DropdownMenuItem(
          value: "domingo", child: Text("Domingo")),
    ];
    return menuItems;
  }

  String selectedValue = "lunes";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color(0xffF8F6F6),
      appBar: AppBar(
        title: const Text('Agregar Ejercicio'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const RutinaCouch()));
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
                    labelText: 'Titulo de Ejercicio',
                    hintText: 'Ingrese un titulo representativo del ejercicio'),
                style: TextStyle(color: Color(0xffC31C50)),
              ),
            ),
            const Padding(
              padding:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descripción',
                    hintText:
                    'Ingrese la descripción del ejercicio, cantidades de repeticiones y series'),
              ),
            ),

            const Padding(
              padding:
              EdgeInsets.only(left: 0.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Grupos Musculares',
                    hintText: 'Ingrese los grupos musculares que se van a trabajar'
                    ),
              ),
            ),
            const Padding(
              padding:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 5),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Ingrese el dia de entrenamiento', style: TextStyle(color: Colors.black, fontSize: 18,),
                textAlign: TextAlign.right,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 15, right: 15, bottom: 15),
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
                      context, MaterialPageRoute(builder: (_) => RutinaCouch()));
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