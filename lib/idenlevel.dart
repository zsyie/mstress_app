import 'package:flutter/material.dart';
import 'package:mstressapp/idenlevel2.dart';
import './main.dart';

void main() => runApp ( new MaterialApp(
  debugShowCheckedModeBanner: false,
  home: new Idenlevel(),
));

class Idenlevel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IdenlevelState();
  }
}

class IdenlevelState extends State<Idenlevel> {
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
        title: Text('STRESS LEVEL'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('PERCEIVED STRESS SCALE (PSS)',
            style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 16.0,
                  letterSpacing: 2.0,
                  color: Colors.amber
              ),),
            SizedBox(height: 8),
            Container(
              margin: EdgeInsets.symmetric(vertical:5),
              width: 180.0,
              height: 65.0,
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black, width: 2.0),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(20.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                child: Text("Let's Try This!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2.0,
                    fontFamily: 'OpenSans',
                  ),
                ),

                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return RadioGroup();
                    },),
                  );},
              ),
            ),
      ],),
      ),
    );
  }

  void startQuiz() {
    setState(() {
      Navigator.push(
          context, new MaterialPageRoute(builder: (context) => RadioGroup()));
    });}
}
