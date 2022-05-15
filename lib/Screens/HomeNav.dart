//
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:homedesignapp/Screens/Commercial.dart';
import 'package:homedesignapp/Screens/HistoryScreen.dart';
import 'package:homedesignapp/Screens/HomeScreen.dart';
import 'package:homedesignapp/Screens/MileStoneScreen.dart';
import 'package:homedesignapp/Screens/Residential_Screen.dart';
import 'package:homedesignapp/Screens/SelectSqyard.dart';
import 'package:homedesignapp/Screens/UserProfile.dart';
import 'package:homedesignapp/Services/Data.dart';

import 'MilestoneFinal.dart';
// import 'package:homedesignadmin/Screens/ChooseOperation.dart';

Color color = Colors.cyan;
var disp ='';
class BottomNavbar extends StatefulWidget {

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  bool _loading = true;

  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _loading = false;
      });
    });
  }

    Widget build(BuildContext context) {
      final double height = MediaQuery.of(context).size.height;
      final double width = MediaQuery.of(context).size.width;
      return Scaffold(
        backgroundColor: color,
        bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          height: 45,
          backgroundColor: Colors.cyan,
          items: [
            Icon(Icons.account_circle),
            Icon(Icons.home),
            Icon(Icons.history),
            Icon(Icons.flag),
          ],
          onTap: (index) {
            setState(() {
              if (index == 0) {
                disp = 'Profile';
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profilee()),
                );
                color = Colors.black;
              } else if (index == 1) {
                disp = 'Home';
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
                color = Colors.black;
              } else if (index == 2) {
                disp = 'History';

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OngoingProject()),
                );
                color = Colors.black;
              } else {
                disp = 'Milestones';
               /* Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Milestonee()),
                );*/
                color = Colors.black;
              }
            });
          },
        ),
        body: _loading ? Center(child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              //   color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(143, 148, 251, .2),
                      blurRadius: 20.0,
                      offset: Offset(0, 10))
                ]),
            child: CircularProgressIndicator())) :
        SingleChildScrollView(
        ),
    );
    }
  }