import 'package:flutter/material.dart';
import './yoga2.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Yoga(),
));

class Yoga extends StatelessWidget {
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
                      return Yoga2();
                    },),
                  );},
              ),
            ],
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          title: Text('POSES OF YOGA'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          elevation: 0.0,
        ),

        body: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('1) Seated Forward Bend',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                      fontSize: 12.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),),
                  SizedBox(height: 2),
                  Center(
                    child: Container(margin: EdgeInsets.symmetric(vertical:3),
                      width: 130.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(image: AssetImage('assets/yoga1.jpg'), fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  SizedBox(
                    width: 310,
                    height: 70,
                    child: Text("Sit in simple position, shins crossed in front of you with your right shin. Come on a slight bend forwards. Keep on for 5 breaths, then put in front of the other shin. Place your hands on the floor.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          fontFamily: 'Open Sans',
                          color: Colors.white
                      ),),),
                  SizedBox(height: 8),
                  Text('2) Standing Forward Bend',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                      fontSize: 12.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),),
                  SizedBox(height: 2),
                  Center(
                    child: Container(margin: EdgeInsets.symmetric(vertical:3),
                      width: 130.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(image: AssetImage('assets/yoga2.jpg'), fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  SizedBox(
                    width: 330,
                    height: 140,
                    child: Text("Exhale and bend knees enough from the standing position to put palms flat to the floor with head-press to the thighs. Feel your spine bending in opposite directions as your head pulls down and in, then bring the hips up, straighten the legs to stretch deeper. Keep for 4-8 seconds, then bend your legs, inhale your arms to the sides and lift your arm and torso up to the standing position.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                      ),),),
                ]
            )
        )
    );
  }
}
