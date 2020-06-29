import 'package:flutter/material.dart';
import './main.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Pilates5(),
));

class Pilates5 extends StatelessWidget {
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
              Text('6) Lift heart up to the sky',
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
                    image: DecorationImage(image: AssetImage('assets/p6.jpg'), fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 330,
                height: 200,
                child: Text("Place your hands on the bottom of the neck, to make sure you arch not. Extend the arms as the neck is lengthened and the head crown raised to the ceiling. Here, take deep breaths to release tightness in the chest that can compress the rib cage and restrict the lungs. Keep breathing slowly, continuously finding ways to stretch your chest and neck attentively as you breathe. And on the exhale, the spine and chest lengthen to establish resistance. Take 4-6 breaths.",
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