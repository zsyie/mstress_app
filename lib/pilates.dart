import 'package:flutter/material.dart';
import './main.dart';
import './pilates1.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pilates(),
));

class Pilates extends StatelessWidget {
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
                      return Pilates1();
                    },),
                  );},
              ),
            ],
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('PILATES'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text('1) Breathing',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Open Sans',
                  fontSize: 12.0,
                  letterSpacing: 2.0,
                  color: Colors.black,
                ),),
              SizedBox(height: 5),
              Center(
                child: Container(margin: EdgeInsets.symmetric(vertical:3),
                  width: 150.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(image: AssetImage('assets/pilates1.jpg'), fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 330,
                height: 200,
                child: Text("Lay back over your arms, with palms cupped. Bend your knees on the concrete, with feet flat, back, shoulders and head high. Inhale slowly, raise and stretch the lungs for a count of 3. At the last breath,exhale deeply into your lower abdominals for a count of 3, and pull them down into your spine. Do this 4-6 times, with each breath, calming the face and jaw.",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 11.0,
                      letterSpacing: 2.0,
                      fontFamily: 'Open Sans',
                      color: Colors.white
                  ),),),
              SizedBox(height: 10),
            ],
          ),
        )
    );
  }
}