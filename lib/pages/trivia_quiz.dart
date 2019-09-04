import 'package:flutter/material.dart';
import 'package:pet_for_me/components/quizdata/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(TriviaQuiz());

class TriviaQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetForMe: Trivia Page'),
      ),
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];


  /*
  List<String> questions = [
    'Mount Everest\'s height is 8848m above sea level.',
    'SpaceX plans to send humans to Mars by 2021',
    'Samsung doesn\'t only makes phones but anti aircraft launchers as well',
  ];

  List<bool> answers = [true,false,true];
  */
  //to check if user input matches with the actual answer to display icon accordingly

  int scoreCount = 0;

  void checkAnswer(bool userPickedAnswer) {
    //The user picked true
    bool correctAnswer = quizBrain.getQuestionAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        int totalQuestions = quizBrain.getQuestionNumberLength();
        //for keeping score of the last question's result which will be used for final SCORE
        if (quizBrain.getQuestionAnswer() == true) {
          scoreCount++;
        }
        Alert(
          context: context,
          title: "Finished! End of quiz",
          desc: "Your Final Score is $scoreCount/$totalQuestions",
          buttons: [
            DialogButton(
              child: Text(
                "Go to Home Page",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                //change this later to integrate into PetForMe to go to home page or something
                quizBrain.resetQuestionNumber();
                scoreKeeper = [];
                Navigator.popAndPushNamed(context, '/HomePage');
                scoreCount = 0;
              },
            ),
          ],
        ).show();
        quizBrain.resetQuestionNumber();
        scoreKeeper = [];
        scoreCount = 0;
      } else {
        if (userPickedAnswer == correctAnswer) {
          print('The user got it right');
          scoreKeeper.add(
            Icon(Icons.check, color: Colors.green),
          );
          scoreCount++;
        } else {
          print('The user got it wrong!');
          scoreKeeper.add(
            Icon(Icons.close, color: Colors.red),
          );
        }
        quizBrain.nextQuestion();//questionNumber++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        //Score Keeper
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

