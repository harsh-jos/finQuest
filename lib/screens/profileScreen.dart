import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Profile', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),);

  }
}
