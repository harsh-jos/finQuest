import 'package:fin_quest/screens/homeScreen.dart';
import 'package:fin_quest/screens/login.dart';
import 'package:fin_quest/screens/navbar.dart';
import 'package:fin_quest/screens/newsScreen.dart';
import 'package:fin_quest/screens/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/homescreen': (context) => HomeScreen(),
        '/navbar' : (context) => Navbar(),
        '/news' : (context) => NewsScreen(),

      },
    );
  }
}

