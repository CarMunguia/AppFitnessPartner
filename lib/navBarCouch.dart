import 'package:flutter/material.dart';

class NavBarCouch extends StatefulWidget {
  final Function currentIndex;
  const NavBarCouch({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<NavBarCouch> createState() => _NavBarStateCouch();
}

class _NavBarStateCouch extends State<NavBarCouch> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (int i){
          setState(() {
            index = i;
            widget.currentIndex(i);
          });
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xffC31C50),
        iconSize: 25.0,
        selectedFontSize: 20.0,
        unselectedFontSize: 18.0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Estadisticas'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.forum),
              label: 'Chats'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Salir'
          ),
        ]


    );
  }
}
