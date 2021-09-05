import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentTabIndex = 0;

  void _onTabBottomNavigationBarItem(int index) {
    _changeScreen(index);
    setState(() {
      _currentTabIndex = index;
    });
  }

  void _changeScreen(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/');
        break;
      case 1:
        Navigator.pushNamed(context, '/place');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home screen',
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTabIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place),
            label: "Lugares",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Cuenta",
          )
        ],
        onTap: _onTabBottomNavigationBarItem,
      ),
    );
  }
}
