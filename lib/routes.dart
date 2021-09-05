import 'package:flutter/material.dart';

import 'package:trips_app/screens/home_screen.dart';
import 'package:trips_app/screens/perfil_screen.dart';
import 'package:trips_app/screens/place_screen.dart';

const String homeScreen = "home";
const String placeScreen = "place";
const String perfilScreen = "perfil";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homeScreen:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case placeScreen:
      return MaterialPageRoute(builder: (context) => PlaceScreen());
    case perfilScreen:
      return MaterialPageRoute(builder: (context) => PerfilScreen());
    default:
      throw ("Error: Screen no registrada.");
  }
}
