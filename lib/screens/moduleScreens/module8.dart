import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:flutter/material.dart';

class Module8 extends StatelessWidget {
  const Module8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Bonds', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(20.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What is Bonds?',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
"Bonds are debt instruments issued by governments, municipalities, corporations, and other entities to raise capital. When an entity issues a bond, it is essentially borrowing money from investors. The bond issuer promises to pay the bondholder a specified amount of interest (the coupon rate) at regular intervals until the bond matures, at which point the issuer repays the bond's face value to the bondholder.Example: Company XYZ issues a 5-year bond with a face value of 1,000 and an annual coupon rate of 5%. This means that the bondholder will receive 50 (5% of 1,000) in interest payments each year for 5 years. At the end of the 5-year period, Company XYZ will repay the 1,000 face value of the bond to the bondholder.",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(16.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Story',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
"Aishwarya, a dedicated teacher at a local school in India, was always looking for ways to grow her savings. She decided to explore investing in bonds, as she had heard they were a safe investment option with predictable returns.After researching different types of bonds, Aishwarya chose to invest in government bonds, which are considered one of the safest investment options in India. She liked the idea of supporting government projects while earning a steady income through interest payments.Aishwarya invested a portion of her savings in government bonds and was pleased with the regular interest payments she received. She also appreciated the security of her investment, knowing that government bonds are backed by the government's creditworthiness.Over time, Aishwarya continued to invest in bonds, diversifying her portfolio to include corporate bonds as well. She found that investing in bonds provided her with a stable source of income and helped her achieve her financial goals.Aishwarya's experience with bonds taught her the importance of balancing risk and return in her investment portfolio, and she continued to explore other investment options to further grow her savings.",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1(),));}, child: Text("Quiz", style: TextStyle(fontFamily: 'Dongle', fontWeight: FontWeight.bold,fontSize: 40),))
          ],
        ),
      ),
    );
  }
}