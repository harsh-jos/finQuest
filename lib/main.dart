import 'package:fin_quest/screens/homeScreen.dart';
import 'package:fin_quest/screens/login.dart';
import 'package:fin_quest/screens/moduleScreens/module1.dart';
import 'package:fin_quest/screens/navbar.dart';
import 'package:fin_quest/screens/newsScreen.dart';
import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:fin_quest/screens/quizScreens/quiz10.dart';
import 'package:fin_quest/screens/quizScreens/quiz2.dart';
import 'package:fin_quest/screens/quizScreens/quiz3.dart';
import 'package:fin_quest/screens/quizScreens/quiz4.dart';
import 'package:fin_quest/screens/quizScreens/quiz5.dart';
import 'package:fin_quest/screens/quizScreens/quiz6.dart';
import 'package:fin_quest/screens/quizScreens/quiz7.dart';
import 'package:fin_quest/screens/quizScreens/quiz8.dart';
import 'package:fin_quest/screens/quizScreens/quiz9.dart';
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
        '/news' : (context) => NewsPage(),
        '/m1' : (context) => Module1(),
        '/q1' : (context) => Quiz1(),
        '/q2' : (context) => Quiz2(),
        '/q3' : (context) => Quiz3(),
        '/q4' : (context) => Quiz4(),
        '/q5' : (context) => Quiz5(),
        '/q6' : (context) => Quiz6(),
        '/q7' : (context) => Quiz7(),
        '/q8' : (context) => Quiz8(),
        '/q9' : (context) => Quiz9(),
        '/q10' : (context) => Quiz10(),

      },
    );
  }
}

