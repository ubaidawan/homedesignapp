import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homedesignapp/Config.dart';
import 'package:homedesignapp/Screens/Home_Design.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';

class Residential extends StatefulWidget {
  @override
  _ResidentialState createState() => _ResidentialState();
}

class _ResidentialState extends State<Residential> {
  @override
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _loading = true;

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _loading = false;
      });
    });
  }

  Future<void> _signOut() async {
    await _auth.signOut();
    SystemNavigator.pop();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: mainColor,
          title: Text(
            'Area(Residential)',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
                fontWeight: FontWeight.bold),
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
              icon: Icon(Icons.account_circle, color: Colors.white),
            ),
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                  ),
                  color: mainColor,
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 40,
                      left: 0,
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )),
                      ),
                    ),
                    Positioned(
                        top: 60,
                        left: 20,
                        child: Text(
                          "Preview",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: mainColor,
                          ),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget SY_Container() {
    child:
    Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7, 0.9],
            colors: [
              Colors.cyan.shade300,
              Colors.cyan.shade400,
              Colors.cyan.shade500,
              Colors.cyan.shade600,
            ],
          ),
        ),
        child: Center(
            child: Text(
          'Next',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        )));
    ListView.builder(
      itemCount: residentialmodellist.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      offset: Offset(-10.0, 10.0),
                      blurRadius: 20.0,
                      spreadRadius: 4.0),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(residentialmodellist[index].sqyard,
                        style: TextSize_SqYard),
                    Row(
                      children: [
                        Text('Rooms'),
                        Spacer(),
                        Text(residentialmodellist[index].room),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Bathroom'),
                        Spacer(),
                        Text(residentialmodellist[index].bathroom),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Kitchen'),
                        Spacer(),
                        Text(residentialmodellist[index].kitchen),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Hall'),
                        Spacer(),
                        Text(residentialmodellist[index].hall),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Floors'),
                        Spacer(),
                        Text(residentialmodellist[index].floor),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Data.idx = index;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Residential()));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.1, 0.5, 0.7, 0.9],
                            colors: [
                              Colors.cyan.shade300,
                              Colors.cyan.shade400,
                              Colors.cyan.shade500,
                              Colors.cyan.shade600,
                            ],
                          ),
                        ),
                        child: Center(
                            child: Text(
                          'Next',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
