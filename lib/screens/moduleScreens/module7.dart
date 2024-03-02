import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Module7 extends StatelessWidget {
  const Module7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Stock Market', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
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
                      'Stock Market Basics:',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                     "The stock market is a platform where buying, selling, and issuance of shares of publicly-held companies occur. It provides a marketplace for investors to trade in stocks, which represent ownership claims on businesses. Investors can buy stocks in the hope that their value will increase over time, allowing them to sell them for a profit. Conversely, they may also lose money if the stock's value decreases. The stock market plays a crucial role in the economy by facilitating capital formation for companies and offering investors opportunities to grow their wealth.",
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
                      "Rutvik, an employee at an IT company in Banglore, had always been curious about the stock market. He had heard stories of people making fortunes through smart investments and wanted to try his hand at it. Rutvik decided to start investing a small portion of his savings in the stock market.He began by researching different companies listed on the Indian stock exchanges. Rutvik focused on companies in the IT sector, as he was familiar with the industry. After thorough research, Rutvik selected a few companies that he believed had strong growth potential based on their financial performance and market position.Rutvik started investing in these companies, buying shares regularly and keeping a close eye on their performance. He also diversified his portfolio by investing in companies from other sectors to reduce risk. Over time, Rutvik's investments started yielding returns, and he began to see his wealth grow.However, Rutvik also experienced some setbacks in the stock market. There were times when the market experienced volatility, causing the prices of his stocks to fluctuate. During such times, Rutvik remained calm and did not panic sell. Instead, he used these opportunities to buy more shares of companies he believed in, taking advantage of the lower prices.Through his journey in the stock market, Rutvik learned valuable lessons about patience, research, and risk management. He understood that investing in the stock market was not a get-rich-quick scheme but required careful planning and a long-term perspective. Rutvik's success in the stock market inspired his colleagues and friends to start investing as well, and he became known as a savvy investor in his circle.",
                    //  'Once upon a time, in the Ahmedabad town , there lived two friends, Akash and Sanjay. Both were eager to start their own businesses. Akash dreamed of opening a cozy café, while Sanjay aspired to launch a tech startup.Excited about their ventures, they each received a loan of 10,000 from the local bank. Akash carefully planned the expenses for the café, allocating funds for rent, utilities, ingredients, and staff. Sanjay, on the other hand, was so enthusiastic about developing the latest tech gadgets that he spent most of the money on cutting-edge equipment and software, neglecting other crucial aspects of the business.As time went by, Akashs café flourished. With a well-thought-out budget, Akash managed to cover all expenses, pay off the loan, and even save some money for future expansion. Meanwhile, Sanjay faced numerous challenges. His neglect of budgeting led to unexpected costs, unpaid bills, and eventually, he had to close down his startup.',
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
