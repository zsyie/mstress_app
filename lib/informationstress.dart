import 'package:flutter/material.dart';
import './meaningstress.dart';
import './typestress.dart';
import './causestress.dart';
import './effectstress.dart';
import './main.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Infostress(),
));

class Infostress extends StatelessWidget {
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
        title: Text('INFORMATION OF STRESS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Container(
              margin: EdgeInsets.symmetric(vertical:20),
              width: 250.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Text("MEANING OF STRESS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    fontFamily: 'OpenSans',
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Meaningstress();
                    },),
                  );},
              ),
            ),
            SizedBox(height: 3.0),

            Container(
              margin: EdgeInsets.symmetric(vertical:12),
              width: 250.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Text("TYPES OF STRESS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    fontFamily: 'OpenSans',
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Typestress();
                    },),
                  );},
              ),
            ),
            SizedBox(height: 3.0),

            Container(
              margin: EdgeInsets.symmetric(vertical:12),
              width: 250.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Text("CAUSES OF STRESS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    fontFamily: 'OpenSans',
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Causestress();
                    },),
                  );},
              ),
            ),
            SizedBox(height: 3.0),

            Container(
              margin: EdgeInsets.symmetric(vertical:12),
              width: 250.0,
              height: 70.0,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Text("EFFECTS OF STRESS",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    fontFamily: 'OpenSans',
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Effectstress();
                    },),
                  );},
              ),
            ),
            SizedBox(height: 3.0),
         ],
        ),
      ),
    );
  }
}