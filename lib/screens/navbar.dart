import 'package:fin_quest/screens/chatScreen.dart';
import 'package:fin_quest/screens/homeScreen.dart';
import 'package:fin_quest/screens/login.dart';
import 'package:fin_quest/screens/newsScreen.dart';
import 'package:fin_quest/screens/profileScreen.dart';
import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:fin_quest/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';



class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  // Create a list of screens for each tab
  List<Widget> _screens = [
    HomeScreen(),
    NewsPage(),
    ProfileScreen(),
    Quiz1(),
  ];

  // Create a list of items for the bottom navbar
  List<PersistentBottomNavBarItem> _items = [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: "Home",
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.newspaper),
      title: "News",
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.manage_accounts),
      title: "Profile",
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.mark_chat_unread_rounded),
      title: "Chatbot",
      activeColorPrimary: Colors.black,
      inactiveColorPrimary: Colors.grey,
    ),

  ];

  // Create a controller for the navbar
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _screens,
        items: _items,
        // Add other properties as per your preference
      ),
    );
  }
}
