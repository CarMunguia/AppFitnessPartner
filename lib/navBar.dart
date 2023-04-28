import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final Function currentIndex;
  const NavBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
              icon: Icon(Icons.restaurant),
              label: 'Menu'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run),
              label: 'Rutina'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Salir'
          ),
        ]
    
    
    );
  }
}


