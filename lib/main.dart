import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mstressapp/pilates.dart';
import './informationstress.dart';
import './idenlevel.dart';


void main() => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
));


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text('MSTRESS'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
            Container(margin: EdgeInsets.symmetric(vertical:3),
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 5.0),
                image: DecorationImage(image: AssetImage('assets/iconstress.jpg'), fit: BoxFit.cover
                ),
              ),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Infostress();
                    },),
                  );},
                child: null,
              ),
            ),
            SizedBox(height: 5),
            Text('Information of Stress',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: 'OpenSans',
                )),
            SizedBox(height: 10),

            Container(margin: EdgeInsets.symmetric(vertical:3),
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 5.0),
                image: DecorationImage(image: AssetImage('assets/iconlevel.jpg'), fit: BoxFit.cover
                ),
              ),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Idenlevel();
                    },),
                  );
                },
                child: null,
              ),
            ),
            SizedBox(height: 5),
            Text('Identification of Stress Level',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: 'OpenSans',
                )),
            SizedBox(height: 10),

            Container(margin: EdgeInsets.symmetric(vertical:3),
              width: 110.0,
              height: 110.0,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 5.0),
                image: DecorationImage(image: AssetImage('assets/manageIcon.jpg'), fit: BoxFit.cover
                ),
              ),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return Pilates();
                    },),
                  );
                },
                child: null,
              ),
            ),
            SizedBox(height: 5),
            Text('Stress Management',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  fontFamily: 'OpenSans',
                )),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
