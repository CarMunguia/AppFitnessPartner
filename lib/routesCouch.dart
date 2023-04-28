import 'perfilCouch.dart';
import 'estadisticas.dart';
import 'bandejaChat.dart';
import 'homeCouch.dart';
import 'inicioSesion.dart';

import 'package:flutter/material.dart';

class RoutesCouch extends StatelessWidget {
  final int index;
  const RoutesCouch({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> myMenu = [
      const HomeCouch(),
      const PerfilCouch(),
      const Estadisticas(),
      BandejaChat(),
      inicioSesion(),
    ];
    return myMenu[index];
  }
}
