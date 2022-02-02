import 'package:flutter/material.dart';
import 'package:homedesignapp/Screens/Detail_Selected.dart';
import 'package:homedesignapp/Screens/HomeScreen.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Milestone extends StatefulWidget {
  //const Milestone({Key? key}) : super(key: key);

  @override
  _MilestoneState createState() => _MilestoneState();
}

class _MilestoneState extends State<Milestone> {
  double Percentage = 0.25;
   int ShowPercent;

  PercentageCalculator() {
    if (Percentage == 0.25) {
      ShowPercent = 25;
    } else if (Percentage == 0.50) {
      ShowPercent = 50;
    } else if (Percentage == 0.75) {
      ShowPercent = 75;
    } else if (Percentage == 1.0) {
      ShowPercent = 100;
    }
  }

  void initState() {

    super.initState();
    PercentageCalculator();
    Percentage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: mainColor,
          title: Text(
            'Status',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.power_settings_new),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle, color: Colors.white),
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
                        "Progress",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ))
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 360,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0),
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(padding: const EdgeInsets.all(10.5)),
                          Text(
                            'Milestone 1',
                            style: TextStyle(
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 6.0, right: 6.0, top: 2.0, bottom: 2.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Center(
                                        child: Text(
                                      'Ground Floor',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )),
                                    Spacer(),
                                  ],
                                ),
                                Divider(),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Cost',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                    Text(
                                      '1000\$',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Text(
                                      'Time',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Spacer(),
                                    Text(
                                      '7 Days',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Text(
                                      'Progress',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Spacer(),
                                    CircularPercentIndicator(
                                      radius: 105.0,
                                      lineWidth: 7.0,
                                      percent: Percentage,
                                      center: Text(
                                        ShowPercent.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      progressColor: Colors.indigoAccent,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ShowPercent == 100
                        ? InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Detail_Selected()));
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.cyan[500],
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
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Center(
                                    child: Text(
                                  "Congratulation",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeScreen()));
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.cyan[500],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(14.0),
                                child: Center(
                                    child: Text(
                                  "Finish",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ]),
        )));
  }
}
