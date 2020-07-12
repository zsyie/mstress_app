import 'package:flutter/material.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: RadioGroup(),
));

class Idenlevel {
  var questions = [
    "In the last month, how often have you been upset because of something that happened unexpectedly?",
    "In the last month, how often have you felt that you were unable to control the important things in your life?",
    "In the last month, how often have you felt nervous and stressed?",
    "In the last month, how often have you felt not confident about your ability to handle your personal problems?",
    "In the last month, how often have you felt that things were not going your way?",
    "In the last month, how often have you found that you could not cope with all the things that you had to do?",
    "In the last month, how often have you felt not been able to control irritations in your life?",
    "In the last month, how often have you felt that you were on the buttom of things?",
    "In the last month, how often have you been angered because of things that happened that were outside of your control?",
    "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?",
  ];

}
  String result;
  int counter = 2;
  var finalScore = 0;
  var questionNumber = 0;
  var quiz = Idenlevel();


class MyChoice{
  String choice;
  int index;
  MyChoice({this.index,this.choice});
}
class RadioGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RadioGroupState();
  }
}
class RadioGroupState extends State<RadioGroup> {
  // ignore: non_constant_identifier_names
  String default_choice = "Never";
  // ignore: non_constant_identifier_names
  int default_index = 0;



  List<MyChoice> choices = [
    MyChoice(index:0, choice:"Never"),
    MyChoice(index:1, choice:"Almost never"),
    MyChoice(index:2, choice:"Sometimes"),
    MyChoice(index:3, choice:"Fairly often"),
    MyChoice(index:4, choice:"Very often"),
  ];
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
          margin: EdgeInsets.all(10.0),
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget> [
              Padding(padding: EdgeInsets.all(10.0)),
              Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),),
                    Text("Score: $finalScore",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              Text((quiz.questions[questionNumber]),
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  )),
              Padding(padding: EdgeInsets.all(10.0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget> [

                  //button1
               Column(
                children: <Widget> [
                Wrap(
                  children: <Widget> [
                  Container(
                    child: Column(
                    children: choices.map((data) => RadioListTile(

                    title: Text('${data.choice}'),
                    groupValue: default_index,
                    value: data.index,
                    activeColor: Colors.yellow,
                    onChanged: (value) {
                    setState(() {
                     default_choice = data.choice;
                     default_index = data.index;
                     finalScore++;

                    });

                    updateQuestion();
                    },
                  )).toList(),
                  ),
                 ),
                 ]
                ),
                ]
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
  void updateQuestion() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Result()));

      }
      else{
        questionNumber++;
      }
    }
    );}

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }
}






class Result extends StatefulWidget {
  final String result;
  Result({this.result});

  @override
  State<StatefulWidget> createState() {
    return new ResultState(score: finalScore);
  }
}

class ResultState extends State<Result> {

  int score = 0;
  ResultState({Key key, @required this.score});

  void finalScore(){
    setState(() {
      if (score < 14) {
        print("Low stress level");
      }else if (score < 27) {
        print("Moderate stress");
      }else if (score > 26) {
        print("High perceived stress");
      }
    }
    );}
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
                    color: Colors.red,
                  )),
              SizedBox(height: 10),
              Text("You are: $finalScore"),
              Padding(padding: EdgeInsets.all(10.0)),
              MaterialButton(
                  color: Colors.red,
                  onPressed: () {
                    questionNumber = 0;
                    score = 0;
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
