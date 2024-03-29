import 'package:dcm/features/auth/screens/auth_screen.dart';
import 'package:dcm/features/home/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

      default: return MaterialPageRoute(builder: (_) => const Scaffold(
        body: Center(
         child:  Text("Error 404 Page Not Found"),
        ),
      ));
  }
}
