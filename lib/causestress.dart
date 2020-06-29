import 'package:flutter/material.dart';
import './main.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Causestress(),
));

class Causestress extends StatelessWidget {
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
        title: Text('CAUSES OF STRESS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Text('1) Death of a loved one',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Open Sans',
              fontSize: 14.0,
              letterSpacing: 2.0,
              color: Colors.white
            ),),
            SizedBox(height: 20),
            Text('2) Natural disasters',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  letterSpacing: 2.0,
                  color: Colors.white
              ),),
            SizedBox(height: 20),
            Text('3) Sexual assault, rape, or domestic abuse',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  letterSpacing: 2.0,
                  color: Colors.white
              ),),
            SizedBox(height: 20),
            Text('4) Relationship problem',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  letterSpacing: 2.0,
                  color: Colors.white
              ),),
            SizedBox(height: 20),
            Text('5) Broken families',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  letterSpacing: 2.0,
                  color: Colors.white
              ),),
            SizedBox(height: 20),
            Text('6) Traumatic experiences',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  letterSpacing: 2.0,
                  color: Colors.white
              ),),
            SizedBox(height: 20),
            Text('7) Job environment',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 14.0,
                  letterSpacing: 2.0,
                  color: Colors.white
              ),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
