import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:flutter/material.dart';

class Module3 extends StatelessWidget {
  const Module3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Investing basics', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
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
                      'What is Investing?',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                     "Investing basics refer to the fundamental principles and concepts that individuals need to understand before they start investing. These include concepts such as risk and return, asset classes, diversification, and compounding.An individual learning about investing basics understands that investing in stocks comes with the potential for higher returns but also higher risk compared to investing in bonds. They also learn about the importance of diversifying their investment portfolio to reduce risk by investing in different asset classes, such as stocks, bonds, and real estate."
                      // 'A budget is a financial plan that outlines expected income and expenses over a specific period, typically monthly or annually. It helps individuals or organizations manage their finances by tracking income, expenses, and savings goals.',
                      ,style: TextStyle(
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
                      "In a Surat town in India, there was a young man named Gautam who worked hard at his job in a small company. Gautam always dreamed of owning a home of his own and living comfortably. One day, Gautam's friend Rohan, who was knowledgeable about investments, told him about the importance of investing to achieve his goals.Rohan explained that there are various investment options available, such as stocks, mutual funds, fixed deposits, bonds, and real estate. He advised Ravi to start by investing in mutual funds, which pool money from many investors to invest in a diversified portfolio of stocks, bonds, or other securities.Gautam was intrigued and decided to start investing in mutual funds. He visited a financial advisor who helped him choose mutual funds based on his risk tolerance and investment goals. Gautam started investing a small amount regularly in mutual funds through a systematic investment plan (SIP).Over time, Gautam's investments grew, and he learned about other investment options like stocks, bonds, and real estate. He diversified his investment portfolio to reduce risk and increase potential returns. With careful planning and disciplined investing, Gautam was able to achieve his dream of owning a home and securing his financial future.",
                      //'Once upon a time, in the Ahmedabad town , there lived two friends, Akash and Sanjay. Both were eager to start their own businesses. Akash dreamed of opening a cozy café, while Sanjay aspired to launch a tech startup.Excited about their ventures, they each received a loan of 10,000 from the local bank. Akash carefully planned the expenses for the café, allocating funds for rent, utilities, ingredients, and staff. Sanjay, on the other hand, was so enthusiastic about developing the latest tech gadgets that he spent most of the money on cutting-edge equipment and software, neglecting other crucial aspects of the business.As time went by, Akashs café flourished. With a well-thought-out budget, Akash managed to cover all expenses, pay off the loan, and even save some money for future expansion. Meanwhile, Sanjay faced numerous challenges. His neglect of budgeting led to unexpected costs, unpaid bills, and eventually, he had to close down his startup.',
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
