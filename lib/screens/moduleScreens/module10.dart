import 'package:fin_quest/screens/quizScreens/quiz1.dart';
import 'package:flutter/material.dart';

class Module10 extends StatelessWidget {
  const Module10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Insurance', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),automaticallyImplyLeading: false),
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
                      'What is Insurance?',
                      style: TextStyle(
                        fontFamily: 'Dongle',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      //'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
                      "Insurance is a contract between an individual (the policyholder) and an insurance company, where the insurance company agrees to provide financial protection against specified risks in exchange for premium payments. The insurance company pools the premiums of policyholders and uses them to cover the losses of those who experience covered events.Example: In India, individuals can purchase health insurance policies to protect themselves and their families from the financial burden of medical expenses. For example, if a person buys a health insurance policy with a sum insured of Rs. 5 lakh, and they are hospitalized for a covered illness or injury, the insurance company will reimburse the medical expenses up to Rs. 5 lakh, subject to any deductibles or co-payments specified in the policy. This helps the individual manage the high costs of healthcare without depleting their savings.",
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
"Dipendra worked as a delivery worker for a courier company in Delhi. He understood the importance of financial protection and decided to invest in insurance to secure his family's future.Dipendra opted for a term life insurance policy that offered a high sum assured at an affordable premium. He also purchased health insurance for himself and his family, ensuring they were covered in case of medical emergencies.A few years later, Dipendra met with a serious accident that left him unable to work for an extended period. Thanks to his insurance policies, Dipendra's family received a lump sum amount from his term life insurance policy, providing them with financial stability during his recovery. Additionally, his health insurance covered his medical expenses, reducing the financial burden on his family.Dipendra's experience highlighted the importance of insurance in providing financial security and peace of mind during challenging times.",
               style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz1(),));})
          ],
        ),
      ),
    );
  }
}