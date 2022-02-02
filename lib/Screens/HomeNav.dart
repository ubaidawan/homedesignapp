import 'package:flutter/material.dart';
import 'package:homedesignapp/Screens/HistoryScreen.dart';
import 'package:homedesignapp/Screens/HomeScreen.dart';
import 'package:homedesignapp/Screens/MileStoneScreen.dart';

import 'ProfileView.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {





  int _currentIndex = 0;
  var ind = 0 ;
  int i=0;
  List<String> a=new List();
  // bool iconss;
  final List<bool> iconss =
  [
    true,
    false,
    false,
    false,
  ];
  final List<Widget> _children = [
    ProfilePage(),

  HistoryScreen(),//history
  HomeScreen(), //Booking
  MileStoneScreen()  ,//Milestone
  ];

  void onTabTapped(int index) {
    //setState(() {
    //iconss=!iconss;
    _currentIndex = index;

    if(_currentIndex == index){
      for( i=0;i<4;i++){
        iconss[i]=false;
      }
      setState(() {
        iconss[_currentIndex] = true;
        ind = _currentIndex;
      });
    }

    //});
  }
  @override
  void initState() {
    //API.Category();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        floatingActionButton:
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            child: FittedBox(
              child: Container(
                width: 80,
                height: 80,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(

          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),

          ),
          child: BottomNavigationBar(
            backgroundColor:  Colors.white60,
            selectedIconTheme: IconThemeData(opacity: 5,color: Colors.black),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey[100],
            type: BottomNavigationBarType.fixed,

            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Container(
                  width: 20,
                  height: 20,
                  child:iconss[0]
                      ? Image.asset('assets/user.png',): Image.asset('assets/user.png',),
                ),
                title: Text('Profile', style: TextStyle(fontSize: 15,color: Colors.black54)),
              ),

              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Container(
                    width: 20,
                    height: 20,
                    child:Icons.home != null
                        ? Image.asset('assets/history.png',): Image.asset('assets/history.png',),),
                ),
                title: Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Text('History', style: TextStyle(fontSize: 15,color: Colors.black54)),
                ),

              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Container(
                    width: 20,
                    height: 20,
                    child:Icons.book_rounded!=null
                        ? Image.asset('assets/booking.png',)
                        : Image.asset('assets/booking.png',),),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: Text('Booking', style: TextStyle(fontSize: 15,color: Colors.black54)),
                ),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 20,
                  height: 20,
                  child:Icons.outlined_flag!=null
                  ? Image.asset('assets/milestones.png',): Image.asset('assets/milestones.png',),),

                title: Text('MileStone', style: TextStyle(fontSize: 15,color: Colors.black54)),),
            ],
            currentIndex: _currentIndex,

            onTap: onTabTapped,
          ),
        )


    );
  }
}