import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:flutter/material.dart';

class Module5 extends StatelessWidget {
  const Module5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Risk Management', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
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
                      'What is Risk Management?',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                      "Financial risk management is the practice of identifying, analyzing, and controlling financial risks to protect a company's or individual's financial stability. It involves steps like:",
                      //'A budget is a financial plan that outlines expected income and expenses over a specific period, typically monthly or annually. It helps individuals or organizations manage their finances by tracking income, expenses, and savings goals.',
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
                      "In a bustling town in India, there was a man named Vikram who ran a small business selling handmade crafts. Vikram's business was doing well, and he dreamed of expanding his operations to reach a wider market. However, he was also aware of the risks involved in expanding a business.Vikram decided to seek advice from a financial advisor named Neha. Neha explained to Vikram the concept of financial risk management, which involves identifying, assessing, and prioritizing risks to minimize their impact on a business.Neha helped Vikram identify the potential risks involved in expanding his business, such as increased competition, changing market trends, and financial instability. Together, they developed a risk management plan that included strategies to mitigate these risks, such as diversifying product offerings, building a strong brand, and maintaining a healthy cash flow.With Neha's guidance, Vikram successfully expanded his business while minimizing the impact of potential risks. He learned the importance of financial risk management in ensuring the long-term success and stability of his business.",
                      // 'Once upon a time, in the Ahmedabad town , there lived two friends, Akash and Sanjay. Both were eager to start their own businesses. Akash dreamed of opening a cozy café, while Sanjay aspired to launch a tech startup.Excited about their ventures, they each received a loan of 10,000 from the local bank. Akash carefully planned the expenses for the café, allocating funds for rent, utilities, ingredients, and staff. Sanjay, on the other hand, was so enthusiastic about developing the latest tech gadgets that he spent most of the money on cutting-edge equipment and software, neglecting other crucial aspects of the business.As time went by, Akashs café flourished. With a well-thought-out budget, Akash managed to cover all expenses, pay off the loan, and even save some money for future expansion. Meanwhile, Sanjay faced numerous challenges. His neglect of budgeting led to unexpected costs, unpaid bills, and eventually, he had to close down his startup.',
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
