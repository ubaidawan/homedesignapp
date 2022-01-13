import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homedesignapp/Config.dart';
import 'package:homedesignapp/List/Square_Yard_List.dart';
import 'package:homedesignapp/Screens/HomeScreen.dart';
import 'package:homedesignapp/Screens/Home_Design.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';

class Detail_Selected extends StatefulWidget {
  // const Detaile_Selected({Key key}) : super(key: key);

  @override
  _Detail_SelectedState createState() => _Detail_SelectedState();
}

class _Detail_SelectedState extends State<Detail_Selected> {
  @override
  void initState() {
    super.initState();
/*    Data.Squareyard;
    Data.Kitchen ;
    Data.Roof ;
    Data.Room ;
    Data.Hall ;
    Data.Bathroom ;
    Data.Cost ;
    Data.image2;
    Data.image;*/
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: mainColor,
          title: Text(
            'Selected Details',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.power_settings_new),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(children: [
              Container(
                height: 130,
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
                        width: 230,
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
                              color: mainColor),
                        ))
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.all(16.0)),
              Container(
                height: 500,
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
                  padding: const EdgeInsets.all(35.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(//Data.Squareyard,
                        "null",
                          style: TextSize_SqYard),


                      Divider(),
                      Row(
                        children: [
                          Container(
                              child: Text(
                            "Rooms",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                          Spacer(),
                          Container(
                              child: Text(
                           // Data.Room ?? "null",
                                "null",

                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          )),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Container(
                              child: Text(
                            "Roof",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                          Spacer(),
                          Container(
                              child: Text(
                           // Data.Roof ?? "null",
                                "null",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          )),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Container(
                              child: Text(
                            "Hall",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                          Spacer(),
                          Container(
                              child: Text(
                          //  Data.Hall ?? "null",
                                "null",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          )),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Container(
                              child: Text(
                            "Kitchen",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                          Spacer(),
                          Container(
                              child: Text(
                          //  Data.Kitchen ??"null",
                                "null",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          )),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Container(
                              child: Text(
                            "Cost",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                          Spacer(),
                          Container(
                              child: Text(
                           // Data.Cost ?? "null",
                                "null",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          )),
                        ],
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
/*                          Data.Squareyard ='';
                          Data.Kitchen = '';
                          Data.Roof = '';
                          Data.Room = '';
                          Data.Hall = '';
                          Data.Bathroom = '';
                          Data.Cost = '';
                          Data.image2='';
                          Data.image='';*/
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen()));
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
                            'Payment ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )),
                        ),
                      ), //next Button
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
