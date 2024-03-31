import 'package:dcm/constants/global_varibles.dart';
import 'package:dcm/features/auth/screens/auth_screen.dart';
import 'package:dcm/features/auth/services/auth_service.dart';
import 'package:dcm/providers/user_provider.dart';
import 'package:dcm/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/widgets/bottom_bar.dart';
import 'features/home/screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    authService.getUserData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const BottomBar()
          : const AuthScreen(),
    );
  }
}
