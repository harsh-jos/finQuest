import 'package:fin_quest/screens/moduleScreens/module1.dart';
import 'package:fin_quest/widgets/homescreenCard.dart';
import 'package:flutter/material.dart';
import 'package:fin_quest/screens/moduleScreens/module10.dart';
import 'package:fin_quest/screens/moduleScreens/module2.dart';
import 'package:fin_quest/screens/moduleScreens/module3.dart';
import 'package:fin_quest/screens/moduleScreens/module4.dart';
import 'package:fin_quest/screens/moduleScreens/module5.dart';
import 'package:fin_quest/screens/moduleScreens/module6.dart';
import 'package:fin_quest/screens/moduleScreens/module7.dart';
import 'package:fin_quest/screens/moduleScreens/module8.dart';
import 'package:fin_quest/screens/moduleScreens/module9.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Learn', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),
          automaticallyImplyLeading: false),
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        padding: EdgeInsets.all(15.0),
        crossAxisSpacing: 15.0,// The number of tiles in the cross axis
        children:  <Widget>[
          HomescreenCard(text: 'Budgeting', imagePath: 'assets/images/card1.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module1(),));}),
          HomescreenCard(text: 'Savings', imagePath: 'assets/images/card2.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module2(),));},),
          HomescreenCard(text: 'Investing Basics', imagePath: 'assets/images/card3.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module3(),));},),
          HomescreenCard(text: 'Debt Management', imagePath: 'assets/images/card4.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module4(),));},),
          HomescreenCard(text: 'Risk Management', imagePath: 'assets/images/card5.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module5(),));},),
          HomescreenCard(text: 'Financial Goal Setting', imagePath: 'assets/images/card1.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module6(),));},),
          HomescreenCard(text: 'Stock Market', imagePath: 'assets/images/card2.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module7(),));},),
          HomescreenCard(text: 'Bonds', imagePath: 'assets/images/card3.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module8(),));},),
          HomescreenCard(text: 'Mutual Funds', imagePath: 'assets/images/card4.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module9(),));},),
          HomescreenCard(text: 'Insurance', imagePath: 'assets/images/card5.png', ontap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Module10(),));},),


        ],
      )
      ,
    );
  }
}



