import 'package:flutter/material.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Meaningstress(),
));

class Meaningstress extends StatelessWidget {
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
          ),],
          ),
        ),

      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('MEANING OF STRESS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text('What is stress?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Open Sans',
                fontSize: 12.0,
                letterSpacing: 2.0,
              color: Colors.white
            ),),
            SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 170,
              child: Text("Stress is the physical, mental and emotional response to a particular stimulus, otherwise referred to as a ' stressor’. It is the adaptation / coping-response that helps the body prepare for difficult situations. It is the reaction of the body to a change that requires an adjustment or response physical, mental or emotional. It will make your body respond to stress by generating chemicals and hormones that will help you meet the challenge.",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 11.0,
                    letterSpacing: 2.0,
                    fontFamily: 'Open Sans',
                    color: Colors.white
                ),),),
            SizedBox(height: 10),
            SizedBox(
              width: 300,
              height: 160,
              child: Text("Depending on the stressor, stress can be either negative or positive. Stress can be optimistic, keeping us alert, focused and able to avoid danger but there can be harmful effects of too much pressure. Eliminating bad pressure from your life is difficult, but you can learn how to stop and handle it.",
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