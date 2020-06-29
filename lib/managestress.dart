import 'package:flutter/material.dart';
import './main.dart';

void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Stressmanage(),
));

class Stressmanage extends StatelessWidget {
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
        title: Text('STRESS MANAGEMENT'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),

      body: GridView.count(crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12,
        children: <Widget> [Column(
            children: <Widget> [
              Row(
                children: <Widget> [
                  Expanded(
                    child: Container(
                            margin: EdgeInsets.symmetric(vertical:10),
                            width: 100.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(13),
                            image: DecorationImage(image: AssetImage('assets/iconlevel.jpg',),
                            )),
                            ),
                  ),
                  Expanded(
                      child: Container(
                      margin: EdgeInsets.symmetric(vertical:10),
                      width: 100.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(image: AssetImage('assets/iconlevel.jpg',),
                          )),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget> [
                  Expanded(
                      child: Container(
                      margin: EdgeInsets.symmetric(vertical:10),
                      width: 100.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(image: AssetImage('assets/iconlevel.jpg',),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Container(
                      margin: EdgeInsets.symmetric(vertical:10),
                      width: 100.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(image: AssetImage('assets/iconlevel.jpg',),
                          )),
                    ),
                  ),
                ],
              ),
            ],
                     ),
      ],),
    );
  }
}

