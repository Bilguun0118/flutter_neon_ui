import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:neon_ui/pages/categories.dart';
import 'package:neon_ui/pages/download.dart';
import 'package:neon_ui/pages/home.dart';
import 'package:neon_ui/pages/play.dart';
import 'package:neon_ui/pages/plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _navigatedBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserPlay(),
    UserPlus(),
    UserCategorie(),
    UserDownload(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff19191b),
      body: _children[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/navBackground.png'),
              fit: BoxFit.cover,
            )),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          fixedColor: Colors.green[300],
          currentIndex: _selectedIndex,
          onTap: _navigatedBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle, color: Colors.white), label: "play"),
            BottomNavigationBarItem(icon: Icon(Icons.add, color: Colors.white), label: "plus"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category_rounded, color: Colors.white), label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download, color: Colors.white), label: "download"),
          ],
        ),
      ),
    );
  }
}
