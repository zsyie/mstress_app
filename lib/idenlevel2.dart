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

  var choices = [
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
    ["Never", "Almost never", "Sometimes", "Fairly often", "Very often"],
  ];


}
  String result;
  var finalScore = 0;
  var questionNumber = 0;
  var quiz = Idenlevel();


class RadioGroup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RadioGroupState();
  }
}
class RadioGroupState extends State<RadioGroup> {

  int selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

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
              Text(quiz.questions[questionNumber],
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  )),
              Padding(padding: EdgeInsets.all(10.0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget> [
                  //button1
                  RadioListTile(
                    value: 1,
                    groupValue: selectedRadioTile,
                    title: Text("Never"),
                    activeColor: Colors.yellow,
                    onChanged: (val) {

                      updateQuestion();
                    },
                  ),

                  //button2
                  RadioListTile(
                    value: 2,
                    groupValue: selectedRadioTile,
                    title: Text("Almost never"),
                    activeColor: Colors.yellow,
                    onChanged: (val) {
                      selectedRadioTile = val;
                      finalScore++;
                      updateQuestion();
                    },
                  ),

                  //button3
                  RadioListTile(
                    value: 3,
                    groupValue: selectedRadioTile,
                    title: Text("Sometimes"),
                    activeColor: Colors.yellow,
                    onChanged: (val) {
                      selectedRadioTile = val;
                      finalScore++;
                      updateQuestion();
                    },
                  ),

                  //button4
                  RadioListTile(
                    value: 4,
                    groupValue: selectedRadioTile,
                    title: Text("Fairly often"),
                    activeColor: Colors.yellow,
                    onChanged: (val) {
                      selectedRadioTile = val;
                      finalScore++;
                      updateQuestion();
                    },
                  ),

                  //button5
                  RadioListTile(
                    value: 5,
                    groupValue: selectedRadioTile,
                    title: Text("Very often"),
                    activeColor: Colors.yellow,
                    onChanged: (val) {
                      selectedRadioTile = val;
                      finalScore++;
                      updateQuestion();
                    },
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => Result(result: finalScore,)));

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
  final int result;
  Result({this.result});

  @override
  State<StatefulWidget> createState() {
    return new ResultState();
  }
}

class ResultState extends State<Result> {

  int score = 0;
  String resultFinal = '';

  void finalScore(){
    setState(() {
      if (widget.result < 14) {
        resultFinal = "Low Stress";
      }else if (widget.result < 27) {
        resultFinal = "Moderate Stress";
      }else  {
        resultFinal = "High Perceived Stress";
      }
    });
    }

    @override
  void initState() {
    super.initState();
    finalScore();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                Text("RESULT: ${widget.result}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.red,
                    )),
                Padding(padding: EdgeInsets.all(10.0)),
                Text("Your Stress Level : $resultFinal",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    )),
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
      ),
    );
  }
}
