import 'package:flutter/material.dart';
import './main.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Yoga4(),
));

class Yoga4 extends StatelessWidget {
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
                  Text('6) Cat-Cow Stretch',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Open Sans',
                      fontSize: 12.0,
                      letterSpacing: 2.0,
                      color: Colors.black,
                    ),),
                  SizedBox(height: 10),
                  Center(
                    child: Container(margin: EdgeInsets.symmetric(vertical:3),
                      width: 160.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(image: AssetImage('assets/yoga6.jpg'), fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: 330,
                    height: 140,
                    child: Text("Start on all fours, exhale and bring the stomach to the spine. Head round towards the wall. Drop crown to the floor on head, do not push chin to chest. Then lift the chin and chest upward to the ceiling. Broaden the blades around the shoulder and pull the shoulders away from the face.",
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