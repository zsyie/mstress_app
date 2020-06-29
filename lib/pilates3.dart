import 'package:flutter/material.dart';
import './main.dart';
import './pilates4.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pilates3(),
));

class Pilates3 extends StatelessWidget {
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
                      return Pilates4();
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
              Text('4) Spine Stretch Forward',
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
                  width: 140.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(image: AssetImage('assets/p4.jpg'), fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 330,
                height: 200,
                child: Text("Sit up in front of you with legs straight out and a little wider than your thighs. When you have tight hip flexors keep the knees slightly bent. Raise your arms so that your wrists line up to your shoulders. Inhale, raise, and exhale. When pushing your abs back towards your neck, move your hands forward towards your feet. Inhale, re-stack the bone-by-bone spine, holding the arms bent to raise up high, then gently exhale. Do this triple.",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Open Sans',
                      fontSize: 11.0,
                      letterSpacing: 2.0,
                      color: Colors.white
                  ),),),
              SizedBox(height: 10),
            ],
          ),
        )
    );
  }
}