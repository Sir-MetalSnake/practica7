import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

int _currentIndex = 0;

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final tabs = [
      const Center(child: Text('Mapa',style: TextStyle(color: Colors.red,fontSize: 50))),
      const Center(child: Text('E-mail',style: TextStyle(color: Colors.amber,fontSize: 50))),
      const Center(child: Text('Alarma',style: TextStyle(color: Colors.blue,fontSize: 50)))
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Practica 7'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[200],
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'E-mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Alarma',
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
