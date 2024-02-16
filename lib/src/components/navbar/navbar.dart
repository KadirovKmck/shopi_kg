import 'package:flutter/material.dart';
import 'package:shopi_kg/src/modules/modules.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
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
      body: _screens[selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(221, 88, 185, 255),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        shadowColor: Colors.black,
        surfaceTintColor: Colors.white,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {
                _onItemTapped(0);
              },
              icon: Icon(
                Icons.home,
                size: 35,
                color:
                    selectedIndex == 0 ? Colors.blue : const Color(0xffA2A9BD),
              ),
              tooltip: 'Home',
            ),
            IconButton(
              onPressed: () {
                _onItemTapped(2);
              },
              icon: Icon(
                Icons.favorite,
                size: 35,
                color:
                    selectedIndex == 2 ? Colors.blue : const Color(0xffA2A9BD),
              ),
              tooltip: 'Favorite',
            ),
            const Text(
              'Продать',
              style: TextStyle(
                fontSize: 17,
                color: Color(0xffA2A9BD),
              ),
            ),
            IconButton(
              onPressed: () => _onItemTapped(1),
              icon: Icon(
                Icons.email,
                size: 35,
                color:
                    selectedIndex == 1 ? Colors.blue : const Color(0xffA2A9BD),
              ),
              tooltip: 'Chat',
            ),
            IconButton(
              onPressed: () => _onItemTapped(3),
              icon: Icon(
                Icons.person,
                size: 35,
                color:
                    selectedIndex == 3 ? Colors.blue : const Color(0xffA2A9BD),
              ),
              tooltip: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
