import 'navBarCouch.dart';
import 'routesCouch.dart';
import 'package:flutter/material.dart';
import 'inicioSesion.dart';
import 'navBar.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: inicioSesion(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  NavBar? myBNB;

  @override
  void initState() {
    myBNB = NavBar(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Routes(index: index),
      bottomNavigationBar: myBNB,
    );
  }
}

class HomeCouch extends StatefulWidget {
  const HomeCouch({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeCouchState();
}

class _HomeCouchState extends State<Home> {
  int index = 0;
  NavBarCouch? myBNBC;

  @override
  void initState() {
    myBNBC = NavBarCouch(currentIndex: (i) {
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: RoutesCouch(index: index),
      bottomNavigationBar: myBNBC,
    );
  }
}
