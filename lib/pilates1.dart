import 'package:flutter/material.dart';
import './main.dart';
import './pilates2.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pilates1(),
));

class Pilates1 extends StatelessWidget {
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
                      return Pilates2();
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
              Text('2) Bridge',
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
                  width: 220.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(image: AssetImage('assets/pilates2.jpg'), fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 330,
                height: 200,
                child: Text("Lie down, be mindful your knees are bent and in line with your heels and hips. Relax your upper body,chest and head and make sure your waist is square. Inhale, raise your hips and keep your abdominals tucked into your spine without bowing your head. Keep on for 3 seconds to breathe. Exhale,bone-by-bone articulation of your spine-begin from the back of your neck, making sure your butt is the last thing to hit the floor.",
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