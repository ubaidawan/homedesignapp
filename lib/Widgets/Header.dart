import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  String  text;
  Header(this.text);
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              text ,
              style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Welcome To Home Design App",
              style: TextStyle(color: Colors.black, fontSize: 18, fontStyle: FontStyle.normal),
            ),
          )
        ],
      ),
    );
  }
}
