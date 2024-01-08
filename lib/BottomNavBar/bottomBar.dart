import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar ({super.key});
  @override
  _NavBar createState() => _NavBar();
}
class _NavBar extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> destinations = [
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Categories Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Feed Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vitthal Krushi Seva Kendra"),
      backgroundColor: Colors.lightGreen,
    ),

      body: Center(
        child: destinations.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
        ),

          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: 'Feed',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.black,
      ),
    );
  }

}