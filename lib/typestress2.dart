import 'package:flutter/material.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Typestress2(),
));

class Typestress2 extends StatelessWidget {
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
          title: Text('TYPES OF STRESS'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          elevation: 0.0,
        ),

        body: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
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
                    height: 150,
                    child: Text("People who are worried or depressed or who appear to see the negative side of everything often tend to experience episodic acute stress. They are often short-tempered, nervous and irritable. Episodic acute stress is the type of stress that seen in people who make self-inflicted, unrealistic or unreasonable demands that are all acclaimed and put too much stress on their attempt to achieve these goals.",
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
                    height: 190,
                    child: Text("Chronic stress is a pressure that seems to be never-ending and inevitable, such as the strain of a bad marriage or a constantly stressful work. Chronic stress can also be triggered by trauma and childhood trauma. The total opposite of acute stress is chronic stress, not thrilling and fun, but dangerous and unhealthy. Chronic stress breaks a person's life apart from his heart, body, or soul.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                      ),),),
                  SizedBox(height: 5),
                ]
            )
        )
    );
  }
}
