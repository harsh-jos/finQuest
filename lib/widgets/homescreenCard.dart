import 'package:flutter/material.dart';

class HomescreenCard extends StatelessWidget {
  const HomescreenCard({super.key, required this.text, required this.imagePath , required this.ontap});

  final String text;
  final String imagePath;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 164,
        height: 93,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0), image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(text, style: TextStyle(color:Colors.white, fontSize: 20 ,fontFamily: 'Inter',fontWeight: FontWeight.w900),),
        )),

      ),
    );
  }
}
