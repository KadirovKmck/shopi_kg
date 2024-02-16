import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopi_kg/src/modules/modules.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomeView(),
    const ProfileView(),
    const HomeView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(221, 88, 185, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        shape: const CircleBorder(),
        child: const Column(
          children: [
            Icon(Icons.add),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        color: const Color.fromARGB(221, 88, 185, 255),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () => _onItemTapped(0),
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              tooltip: 'Home',
            ),
            IconButton(
              onPressed: () => _onItemTapped(2),
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              tooltip: 'Favorite',
            ),
            IconButton(
              onPressed: () => _onItemTapped(1),
              icon: const Icon(
                Icons.email,
                color: Colors.white,
              ),
              tooltip: 'Chat',
            ),
            IconButton(
              onPressed: () => _onItemTapped(3),
              icon: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              tooltip: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
