import 'package:flutter/material.dart';
import 'package:mstressapp/typestress2.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Typestress(),
));

class Typestress extends StatelessWidget {
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
                    return Typestress2();
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
                height: 110,
                child: Text("Eustress was the positive reaction towards stress that can keep you energized. Eustress could be considered an improvement in the buffer zone, with the effect of improving health and increasing morbidity and mortality. ",
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
                height: 190,
                child: Text("Acute stress is the most widely experienced of all forms of stress, as it is typically caused by the daily demands and pressures that each of us is facing. Acute stress is the sort of stress that briefly throws you out of control. Acute stress disorder is a state of mental health that can occur immediately following a traumatic event. It can cause a variety of psychological symptoms and may lead to post-traumatic stress disorder without awareness or care.",
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
