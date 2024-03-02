import 'package:flutter/material.dart';


class Quiz2 extends StatefulWidget {
  const Quiz2({Key? key}) : super(key: key);

  @override
  _Quiz2State createState() => _Quiz2State();
}

class _Quiz2State extends State<Quiz2> {
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
        'Where did Ravi find the rupee coin?',
        ['In a shop', 'In a river', 'On the ground', 'In his house'],
        2,
      ),
      Question(
        'What did Ravi do with the rupee coin?',
        ['He spent it immediately', 'He saved it in a piggy bank', 'He gave it to his parents', 'He lost it'],
        1,
      ),
      Question(
        'How did Ravi earn extra money?',
        ['By working in a factory', 'By helping neighbors with chores', 'By selling vegetables', 'By borrowing from friends'],
        1,
      ),
      Question(
        ' What did Ravi use his savings for?',
        [' To buy toys', 'To pay for his college education', 'To travel the world', ' To donate to charity'],
        1,
      ),
      Question(
        " What lesson did Ravi learn from his experience?",
        ['The joy of spending money impulsively', 'The importance of saving for the future', 'The value of borrowing money from friends', 'The need to work hard without saving money'],
        1,
      ),
    ];
  }
}


