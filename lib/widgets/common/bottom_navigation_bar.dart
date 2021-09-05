import 'package:flutter/material.dart';

import 'package:trips_app/routes.dart' as routes;

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  static int currentTabIndex = 0;

  void onTabBottomNavigationBarItem(int index) {
    _changeScreen(index);
    setState(() {
      currentTabIndex = index;
    });
  }

  void _changeScreen(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, routes.homeScreen);
        break;
      case 1:
        Navigator.pushNamed(context, routes.placeScreen);
        break;
      case 2:
        Navigator.pushNamed(context, routes.perfilScreen);
        break;
      default:
        throw ("Error in changeSreen");
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTabIndex,
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
      onTap: onTabBottomNavigationBarItem,
    );
  }
}
