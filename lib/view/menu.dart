import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/count_screen.dart';
import 'package:flutter_application_1/view/firebase_1.dart';
import 'package:flutter_application_1/view/perfil.dart';





class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int _selectedIndex = 0;
  static const TextStyle optionnStyle = TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  static  const List<Widget> _widgetOptions = <Widget>[
    Text("Home",
          style: optionnStyle,
    ),
    AdminPage(),
    CallFirebase(),
    Text("Profile",
          style: optionnStyle,
    ),
  ];

  void _onItemTapped(int index){
    setState(( ) {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title:  const Text("My Menu")
      
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.green
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Profile",
            backgroundColor: Colors.red
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.car_crash_rounded),
            label: "Service",
            backgroundColor: Colors.black12
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings_accessibility),
            label: "Service",
            backgroundColor: Colors.black12
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


