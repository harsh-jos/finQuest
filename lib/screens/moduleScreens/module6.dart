import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:flutter/material.dart';

class Module6 extends StatelessWidget {
  const Module6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Financial Goal Setting', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
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
                      'What is Financial Goal Setting?',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                    "Financial goal setting involves identifying specific objectives related to one's finances, such as saving for retirement, buying a home, or paying off debt, and creating a plan to achieve those goals.It involves defining specific, measurable, achievable, relevant, and time-bound (SMART) objectives for your money. It helps you chart a course for your financial future and track your progress towards achieving your desired outcomes.",
                      //  'A budget is a financial plan that outlines expected income and expenses over a specific period, typically monthly or annually. It helps individuals or organizations manage their finances by tracking income, expenses, and savings goals.',
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
                      "In a small village in India, there was a young boy named Arun who was passionate about technology. Arun dreamt of becoming a software developer and creating innovative solutions to help his community. However, he knew that pursuing a career in technology would require a lot of money for education and training.Arun decided to set a financial goal for himself. He started by researching the costs of education and training programs in technology. Arun then created a plan to save money from his part-time job and any extra income he received.To accelerate his savings, Arun came up with an innovative idea. He started teaching basic computer skills to people in his village for a small fee. The people were eager to learn, and Arun's classes became popular. He used the money he earned from teaching to add to his savings for his education.Arun's determination and innovative approach paid off. With his savings and some scholarships he applied for, Arun was able to enroll in a prestigious technology program. He achieved his dream of becoming a software developer and continued to use his skills to benefit his community.",
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
