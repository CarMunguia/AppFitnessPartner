
import 'perfil.dart';
import 'menu.dart';
import 'rutina.dart';
import 'main.dart';
import 'inicio.dart';
import 'inicioSesion.dart';

import 'package:flutter/material.dart';




class Routes extends StatelessWidget{
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> myMenu = [
      const Inicio(),
      const Perfil(),
      const Menu(),
      const Rutina(),
      inicioSesion(),
    ];
    return myMenu[index];







  }
}