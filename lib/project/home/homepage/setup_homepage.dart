import 'package:flutter/material.dart';
import 'package:flutter_ppkd/project/home/homepage/home_page.dart';
import 'package:flutter_ppkd/project/home/homepage/learn_page.dart';
import 'package:flutter_ppkd/project/home/homepage/search_page.dart';

/// Flutter code sample for [BottomNavigationBar].

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // HomePage(),
    SearchPage(),
    LearnPage(),
    Text('Index 3: Settings', style: optionStyle),
    Text('Index 5: Settings', style: optionStyle),
    Text('Index 6: Settings', style: optionStyle),
    Text('Index 6: Settings', style: optionStyle),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pembelajaran',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Pembelajaran',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800], // Warna saat dipilih
        unselectedItemColor: Colors.black, // Warna default
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme:
            IconThemeData(color: Colors.amber[800]), // Atur warna ikon terpilih
        unselectedIconTheme: IconThemeData(
            color: Colors.black), // Atur warna ikon tidak terpilih
      ),
    );
  }
}
