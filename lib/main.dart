import 'package:flutter/material.dart';
import 'add_page.dart';
import 'home_page.dart';
import 'profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: _title, home: TabsPage());
  }
}

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    HomePage(),
    AddPage(),
    ProfilPage(),
  ];

  static const List<String> _widgetTitre = <String>[
    'Accueil',
    'Ajouter un post',
    'Profil',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_widgetTitre.elementAt(_selectedIndex)),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Ajouter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber.shade700,
        onTap: _onItemTapped,
      ),
    );
  }
}
