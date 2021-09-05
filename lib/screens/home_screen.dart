import 'package:flutter/material.dart';

import 'package:trips_app/widgets/common/bottom_navigation_bar.dart';
// import 'package:trips_app/routes.dart' as routes;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Home screen',
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
