import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:flutter/material.dart';

class Module9 extends StatelessWidget {
  const Module9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Mutual Funds', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
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
                      'What is Mutual Funds?',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                   "Mutual funds are investment vehicles that pool money from multiple investors to invest in a diversified portfolio of stocks, bonds, or other securities. They are managed by professional fund managers who make investment decisions on behalf of the investors. Mutual funds offer investors the opportunity to invest in a diversified portfolio with relatively low investment amounts, making them a popular choice for individual investors.Example: An investor buys shares of a mutual fund that invests in a mix of stocks and bonds. The mutual fund has a Net Asset Value (NAV) of Rs. 50 per share when the investor buys in. The fund manager uses the pooled money to buy a variety of stocks and bonds. If the value of the underlying investments increases, the NAV of the mutual fund shares will also increase. If the investor later sells their mutual fund shares when the NAV is Rs. 60, they will earn a profit of Rs. 10 per share, minus any fees or expenses associated with the mutual fund.",
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
"Saurav, an employee at a leading Food Technology company in Noida, had always been interested in growing his money wisely. He had heard about mutual funds from his colleagues and decided to explore this investment option.After researching various mutual fund schemes, Saurav chose to invest in a diversified equity mutual fund that aligned with his risk appetite and financial goals. He started with a small investment amount, gradually increasing it as he gained more confidence in the mutual fund's performance.Over the years, Saurav continued to monitor his mutual fund investments and made informed decisions based on market trends and his financial goals. His investments grew steadily, and he achieved his financial milestones, such as buying a house and planning for his child's education.Saurav's success with mutual funds inspired him to educate his friends and family about the benefits of investing in mutual funds for long-term wealth creation.",
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