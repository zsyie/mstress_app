import 'package:flutter/material.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Effectstress2(),
));

class Effectstress2 extends StatelessWidget {
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
            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('3. Episodic Stress',
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
                    child: Text("- Longer periods of intermitted depression, anxiety disorders and emotional distress, ceaseless worrying, persistent physical symptoms similar to those found in acute stress, coronary heart diseases, or other heart problems.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          fontFamily: 'Open Sans',
                          color: Colors.white
                      ),),),
                  SizedBox(
                    width: 300,
                    height: 100,
                    child: Text("- It also causes muscle irritation such as tension, vomiting, back pain, jaw pain, muscles strained, tendons, and problems with the ligament. It can lead to problems with the liver, bladder, stomach acid, flatulence, vomiting, constipation, irritable bowel syndrome (IBS).",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          fontFamily: 'Open Sans',
                          color: Colors.white
                      ),),),
                  SizedBox(height: 10),
                  Text('4. Chronic Stress',
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
                    child: Text("- Your autonomic nervous system will be overactive if you encounter chronic stress, which is likely to damage your body. The first signs, including chronic headaches and increased susceptibility to colds, are relatively mild.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                      ),),),
                  SizedBox(
                    width: 300,
                    height: 90,
                    child: Text("- Serious illnesses like stroke, heart attack, cancer, and psychological problems such as clinical depression and post-traumatic disorder can originate from chronic stress.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                      ),),),
                ]
            )
        )
    );
  }
}