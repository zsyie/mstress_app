import 'package:flutter/material.dart';
import './yoga4.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Yoga3(),
));

class Yoga3 extends StatelessWidget {
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
                      return Yoga4();
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
                  Text('4) Cropse Pose',
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
                      width: 130.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(image: AssetImage('assets/yoga4.jpg'), fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 330,
                    height: 100,
                    child: Text("Lie flat back with legs together but not touching, and arms with palms out on the sides. Keep your eyes closed and your face relaxed and breathe deep. Take focus to every aspect of your body, starting at the top of your head. Keep in place for 3-5 minutes.",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Open Sans',
                          fontSize: 11.0,
                          letterSpacing: 2.0,
                          color: Colors.white
                      ),),),
                  SizedBox(height: 10),
                  Text('5) Side Stretch',
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
                      width: 130.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(image: AssetImage('assets/yoga5.jpg'), fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    width: 330,
                    height: 80,
                    child: Text("Take one hand to the floor, walk it away from your neck and drop your head over your head to your side. Repeat on the other side.",
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
