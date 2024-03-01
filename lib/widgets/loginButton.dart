import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/navbar');
      },
      child: Container(
          height: 50,
          width: 300,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color.fromRGBO(71, 39, 139, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Text('Login', style: TextStyle(color:Colors.white,fontFamily: 'Dongle',fontWeight: FontWeight.w400,fontSize: 29),))
      ),
    );
  }
}
