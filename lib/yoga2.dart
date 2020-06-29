import 'package:flutter/material.dart';
import './yoga3.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Yoga2(),
));

class Yoga2 extends StatelessWidget {
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
                      return Yoga3();
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
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  Text('3) Bridge Pose',
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
                        image: DecorationImage(image: AssetImage('assets/yoga3.jpg'), fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 330,
                    height: 160,
                    child: Text("Lying on the back, bending knees and setting feet flat apart on the hip width of the board, sliding arms opposite the body with palms facing downwards. Push the feet into the floor, inhale and raise the legs, roll the spine off the floor, keep the hip width separate from the knees. To raise the chest, press into the arms and shoulders and engage the legs and buttocks to raise hips higher. Keep for 4-8 breaths, then release on an exhale and rollback to the floor gradually.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          fontFamily: 'Open Sans',
                          color: Colors.white
                      ),),),
                  SizedBox(height: 8),
                ]
            )
        )
    );
  }
}
