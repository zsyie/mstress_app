import 'package:flutter/material.dart';
import './main.dart';
import './effectstress2.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Effectstress(),
));

class Effectstress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 60,
        color: Colors.deepPurpleAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            FlatButton(
              child: Icon(Icons.home,
                  size: 45.0),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return HomeScreen();
                  },),
                );},
            ),
            FlatButton(
              child: Icon(Icons.navigate_next,
                  size: 50.0),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return Effectstress2();
                  },),
                );},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('EFFECTS OF STRESS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),

        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('1. Eustress',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                      fontSize: 12.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 300,
                    height: 70,
                    child: Text("- Eustress could be effect of improving health and reducing morbidity and mortality. It is led to an increase in the ability of the adaptive bodies.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          fontFamily: 'Open Sans',
                          color: Colors.white
                      ),),),
                  SizedBox(height: 10),
                  Text('2. Acute Stress',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                      fontSize: 12.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 300,
                    height: 90,
                    child: Text("- Your heart may race and the pressure of your blood may increase. Your feeling of emergency can cause migraine or even chest pain. Certain signs may include irritability, depression, fatigue, nausea, back pain, and trouble with the stomach.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                      ),),),
                  SizedBox(
                    width: 300,
                    height: 100,
                    child: Text("- Acute stress also affects people with acute hypertension which increased blood pressure, rapid heartbeat, fast pulse, sweaty palms, palpitations of the heart, dizziness, migraine headaches, cold hands or feet, shortness of breath, sleep problems and chest pain.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                      ),),),
                  SizedBox(height: 10),
                ]
            )
        )
    );
  }
}
