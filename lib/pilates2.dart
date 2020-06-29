import 'package:flutter/material.dart';
import './main.dart';
import './pilates3.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pilates2(),
));

class Pilates2 extends StatelessWidget {
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
                      return Pilates3();
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
          padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text('3) Spine Rotation',
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
                  width: 280.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(image: AssetImage('assets/pilates3.PNG'), fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 330,
                height: 180,
                child: Text("Lie flat on the concrete, bend and sit together. Make a 'T' pose with your neck, bring your abdominals into your spine while you take both your left legs and your right head. Take deep breaths here, concentrating on drawing in fresh oxygen to the ribcage, back and lower abs. Keep your abdominals in your lower back when bringing the knees into your chest and moving to the other leg. Do this double or triple.",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 11.0,
                      letterSpacing: 2.0,
                      fontFamily: 'Open Sans',
                      color: Colors.white
                  ),),),
            ],
          ),
        )
    );
  }
}