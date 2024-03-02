import 'package:flutter/material.dart';


class Quiz1 extends StatefulWidget {
  const Quiz1({Key? key}) : super(key: key);

  @override
  _Quiz1State createState() => _Quiz1State();
}

class _Quiz1State extends State<Quiz1> {
  late List<Question> questions;
  int index = 0;
  int score = 0;
  int? selectedOption;

  @override
  void initState() {
    super.initState();
    questions = MockAPI.getQuestions();
  }

  void nextQuestion() {
    if (index < questions.length - 1) {
      setState(() {
        index++;
        selectedOption = null;
      });
    } else {
      // TODO: Navigate to result page
    }
  }

  void checkAnswer(int option) {
    if (option == questions[index].answer) {
      setState(() {
        score++;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Correct!'),
          backgroundColor: Colors.green,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Wrong!'),
          backgroundColor: Colors.red,
        ),
      );
    }
    nextQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
          centerTitle: true,
          title: Text('Quiz', style: TextStyle( fontSize:23  , fontFamily: 'Inter', fontWeight: FontWeight.w900),),
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${index + 1} of ${questions.length}',
              style: TextStyle(fontFamily:'Dongle',fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              questions[index].question,
              style: TextStyle(fontFamily:'Inter',fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: questions[index].options.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: selectedOption == i
                        ? Colors.purpleAccent.withOpacity(0.5)
                        : Colors.white,
                    child: ListTile(
                      title: Text(questions[index].options[i], style: TextStyle(fontFamily:'Inter',fontSize: 24.0),),
                      onTap: () {
                        if (selectedOption == null) {
                          setState(() {
                            selectedOption = i;
                          });
                          checkAnswer(i);
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}






class Question {
  final String question;
  final List<String> options;
  final int answer;

  Question(this.question, this.options, this.answer);
}

class MockAPI {
  static List<Question> getQuestions() {
    return [
      Question(
        'What did Akash and Sanjay receive from the local bank?',
        ['A loan of 5,000 each', 'A loan of 10,000 each', 'A grant of 10,000 each', 'A loan of 15,000 each'],
        1,
      ),
      Question(
        ' How did Akash plan the expenses for the café?',
        ['He spent most of the money on equipment.', 'He allocated funds for rent, utilities, ingredients, and staff.', ' He didnt plan his expenses.', 'He used the money for personal expenses.'],
        1,
      ),
      Question(
        'What did Sanjay spend most of the money on?',
        ['Rent', 'Utilities', ' Cutting-edge equipment and software', 'Staff'],
        2,
      ),
      Question(
        'Why did Akashs café flourish?',
        ['Because he didnt plan his expenses', 'Because he spent most of the money on equipment.', 'Because he managed to cover all expenses, pay off the loan, and save some money for future expansion', 'Because he spent all the money on personal expenses.'],
        2,
      ),
      Question(
        "What happened to Sanjay's startup?",
        ['It flourished', 'It faced numerous challenges and eventually closed down.', 'It paid off the loan.', 'It saved some money for future expansion.'],
        1,
      ),
    ];
  }
}


