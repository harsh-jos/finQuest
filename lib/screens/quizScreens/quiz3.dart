import 'package:flutter/material.dart';


class Quiz3 extends StatefulWidget {
  const Quiz3({Key? key}) : super(key: key);

  @override
  _Quiz3State createState() => _Quiz3State();
}

class _Quiz3State extends State<Quiz3> {
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
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${index + 1} of ${questions.length}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              questions[index].question,
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: questions[index].options.length,
                itemBuilder: (context, i) {
                  return Card(
                    color: selectedOption == i
                        ? Colors.blue.withOpacity(0.5)
                        : Colors.white,
                    child: ListTile(
                      title: Text(questions[index].options[i]),
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
        'What is the capital of India?',
        ['New Delhi', 'Mumbai', 'Kolkata', 'Chennai'],
        0,
      ),
      Question(
        'Who is the current Prime Minister of India?',
        ['Narendra Modi', 'Rahul Gandhi', 'Manmohan Singh', 'Arvind Kejriwal'],
        0,
      ),
      Question(
        'Which of these is a programming language?',
        ['Flutter', 'Dart', 'Firebase', 'Android'],
        1,
      ),
      Question(
        'What is the name of the Indian national anthem?',
        ['Vande Mataram', 'Jana Gana Mana', 'Sare Jahan Se Achha', 'Raghupati Raghav Raja Ram'],
        1,
      ),
      Question(
        'Which of these is a river in India?',
        ['Nile', 'Amazon', 'Ganga', 'Mississippi'],
        2,
      ),
    ];
  }
}


