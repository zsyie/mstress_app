import 'package:flutter/material.dart';
import './main.dart';
import './pilates5.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pilates4(),
));

class Pilates4 extends StatelessWidget {
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
                      return Pilates5();
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
              Text('5) Saw',
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
                    image: DecorationImage(image: AssetImage('assets/p5.jpg'), fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 330,
                height: 200,
                child: Text("Take hands behind the head with elbows high, with legs still out in front of you. Inhale, raise the spine, exhale and twist to one side, imagine that, with the water, you rinse the spine out like a towel. Inhale,ascend back to the bottom, exhale and turn around to the other side.",
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