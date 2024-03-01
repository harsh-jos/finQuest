import 'package:flutter/material.dart';

class FormTextfield extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const FormTextfield({super.key, required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(icon, color: Colors.grey,),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
