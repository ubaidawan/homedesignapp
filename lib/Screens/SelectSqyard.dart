import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homedesignapp/120yardnew.dart';
import 'package:homedesignapp/180yardnew.dart';
import 'package:homedesignapp/240yardnew.dart';
import 'package:homedesignapp/300yardnew.dart';

class SelectSqyard extends StatefulWidget {

  @override
  _SelectSqyardState createState() => _SelectSqyardState();
}

class _SelectSqyardState extends State<SelectSqyard> {
  String txt='';
  @override
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> _signOut() async {
    await _auth.signOut();
    SystemNavigator.pop();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyan,
          title: Text(
            'Select Yards',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _signOut();
              },
              icon: Icon(Icons.power_settings_new),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan, //background color of button
                      // side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 140,vertical: 20)//content padding inside button
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const twenty()),
                    ); //code to execute when this button is pressed.
                  },
                  child: Text("120 Square Yard")
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan, //background color of button
                      // side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 140,vertical: 20)//content padding inside button
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Oneeighty()),
                    );  //code to execute when this button is pressed.
                  },
                  child: Text("180 Square Yard")
              ),
              SizedBox(height: 50,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan, //background color of button
                      // side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 140,vertical: 20)//content padding inside button
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Twoforty()),
                    ); //code to execute when this button is pressed.
                  },
                  child: Text("240 Square Yard")
              ),

              SizedBox(height: 50,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.cyan, //background color of button
                      // side: BorderSide(width:3, color:Colors.brown), //border width and color
                      elevation: 3, //elevation of button
                      shape: RoundedRectangleBorder( //to set border radius to button
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 140,vertical: 20)//content padding inside button
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Threehundred()),
                    );  //code to execute when this button is pressed.
                  },
                  child: Text("300 Square Yard")
              ),
    Text(txt,textScaleFactor: 2),
            ],
          ),
        ),
    );
  }
}