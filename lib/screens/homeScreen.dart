import 'package:fin_quest/widgets/homescreenCard.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Learn', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        padding: EdgeInsets.all(15.0),
        crossAxisSpacing: 15.0,// The number of tiles in the cross axis
        children:  <Widget>[
          HomescreenCard(text: 'Budgeting', imagePath: 'assets/images/card1.png', ontap: (){}),
          HomescreenCard(text: 'Savings', imagePath: 'assets/images/card2.png', ontap: (){},),
          HomescreenCard(text: 'Investing Basics', imagePath: 'assets/images/card3.png', ontap: (){},),
          HomescreenCard(text: 'Debt Management', imagePath: 'assets/images/card4.png', ontap: (){},),
          HomescreenCard(text: 'Risk Management', imagePath: 'assets/images/card5.png', ontap: (){},),
          HomescreenCard(text: 'Financial Goal Setting', imagePath: 'assets/images/card2.png', ontap: (){},),
          HomescreenCard(text: 'Stock Market', imagePath: 'assets/images/card2.png', ontap: (){},),
          HomescreenCard(text: 'Bonds', imagePath: 'assets/images/card2.png', ontap: (){},),
          HomescreenCard(text: 'Mutual Funds', imagePath: 'assets/images/card2.png', ontap: (){},),
          HomescreenCard(text: 'Insurance', imagePath: 'assets/images/card2.png', ontap: (){},),


        ],
      )
      ,
    );
  }
}



