import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Idenlevel2(),
));

class Idenlevel {
  var questions = [
    "Been upset because of something that happened unexpectedly?",
    "That you were unable to control the important things in your life?",
    "Nervous and stressed?",
    "Not confident about your ability to handle your personal problems?",
    "That things were not going your way?",
    "Found that you could not cope with all the things that you had to do?",
    "Not been able to control irritations in your life?",
    "That you were on the buttom of things?",
    "Been angered because of things that happened that were outside of your control?",
    "Difficulties were piling up so high that you could not overcome them?",
  ];
  var choices = [
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
    ["0 - never", "1 - almost never", "2 - sometimes", "3 - fairly often", "4 - very often"],
  ];
  var result = null;
    if (result >= 27 && <= 40) {
      print("You are considered in high perceived stress.");
  } else if (result >= 14 && <= 26) {
      print("You are considered in moderate stress.");
  } else if (result < 14) {
      print("You are considered in low stress.");
  }

}
  var finalScore = 0;
  var questionNumber = 1;
  var quiz = Idenlevel();

class Idenlevel2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IdenlevelState2();
  }
}

class IdenlevelState2 extends State<Idenlevel2> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
            title: Text('STRESS LEVEL'),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            elevation: 0.0,
      ),
        body: Container(
          margin: EdgeInsets.all(40.0),
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget> [
              Padding(padding: EdgeInsets.all(20.0)),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                    style: TextStyle(
                      fontSize: 22.0
                    ),),
                    Text("Score: $finalScore",
                    style: TextStyle(
                        fontSize: 22.0
                    )),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(30.0)),
              Text(quiz.questions[questionNumber],
              style: TextStyle(
                fontSize: 18.0
              )),
              Padding(padding: EdgeInsets.all(10.0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [

                  //button1
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.purple,
                    onPressed: () {
                      updateQuestion();
                    },
                    child: Text(quiz.choices[questionNumber][1],
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  ),

                  //button2
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.purple,
                    onPressed: () {
                      updateQuestion();
                    },
                    child: Text(quiz.choices[questionNumber][2],
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  //button3
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.purple,
                    onPressed: () {
                      updateQuestion();
                    },
                    child: Text(quiz.choices[questionNumber][3],
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  //button4
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.purple,
                    onPressed: () {
                      updateQuestion();
                    },
                    child: Text(quiz.choices[questionNumber][4],
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  //button5
                  MaterialButton(
                    minWidth: 120.0,
                    color: Colors.purple,
                    onPressed: () {
                      updateQuestion();
                    },
                    child: Text(quiz.choices[questionNumber][5],
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding (padding: EdgeInsets.all(10.0)),
              Container(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  minWidth: 240.0,
                  height: 40.0,
                  color: Colors.red,
                  onPressed: resetQuiz,
                  child: Text("Quit",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 1;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Summary(score: finalScore)));
      }else {
        questionNumber++;
      }
    }
    );}
}

class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Text("Result: $score",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              )),

              Padding(padding: EdgeInsets.all(10.0)),
              MaterialButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 1;
                  finalScore = 0;
                  Navigator.pop(context);
                },
                child: Text("Reset Test",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ))
              )
            ],
          ),
        ),
      ),
    );
  }
}
