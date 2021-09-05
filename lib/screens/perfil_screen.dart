import 'package:flutter/material.dart';
import 'package:trips_app/widgets/common/bottom_navigation_bar.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Perfil Screen'),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
