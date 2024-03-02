import 'package:fin_quest/screens/quizScreens/quiz2.dart';
import 'package:flutter/material.dart';

class Module2 extends StatelessWidget {
  const Module2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Savings', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
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
                      'Savings',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                     "Savings refers to the money you set aside after covering your expenses. It's the portion of your income that you don't spend and keep for future use. Think of it as your financial safety net or a pot of money for your goals.",
                      // 'A budget is a financial plan that outlines expected income and expenses over a specific period, typically monthly or annually. It helps individuals or organizations manage their finances by tracking income, expenses, and savings goals.',
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
                      "In a small village in India, there lived a boy named Ravi. Ravi's family was poor, and they struggled to make ends meet. Despite their financial difficulties, Ravi's parents always emphasized the importance of saving money for the future.One day, Ravi found a rupee coin lying on the ground. Instead of spending it right away, he decided to save it in a small clay piggy bank he had made himself. Every day, Ravi would look for ways to earn a little more money, whether by helping neighbors with chores or selling vegetables from their small garden.Years went by, and Ravi continued to save whatever little money he could. His piggy bank grew heavier, and he started dreaming of using his savings to help his family escape poverty. When he turned 18, Ravi opened the piggy bank and counted the money. To his surprise, he had saved enough to pay for his college education.Ravi's dedication to saving and his wise financial habits not only helped him pursue his dreams but also inspired others in the village to save money for their future.",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz2(),));}, child: Text("Quiz", style: TextStyle(fontFamily: 'Dongle', fontWeight: FontWeight.bold,fontSize: 40),))
          ],
        ),
      ),
    );
  }
}
