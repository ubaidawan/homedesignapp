import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:homedesignapp/Screens/HistoryScreen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../global.dart';


class Milestonee extends StatefulWidget {
  const Milestonee({Key key}) : super(key: key);

  @override
  _MilestoneeState createState() => _MilestoneeState();
}

class _MilestoneeState extends State<Milestonee> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CircularPercentIndicator(
              radius: 130.0,
              animation: true,
              animationDuration: 1200,
              lineWidth: 15.0,
              percent: percent,
              center: new Text(
                "40 hours",
                style:
                new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.yellow,
              progressColor: Colors.red,
            ),
            SizedBox(height: 5,),
            InkWell(
              onTap: () async {
                int update = int.parse(residentialquotationlist[pos].progress);
                print(update);
                update = update +10;
                print(update);

                DatabaseReference reference = await FirebaseDatabase.instance
                    .reference()
                    .child("Requests")
                    .child(residentialrequestmodellist[pos].uid);
                reference.update({

                  "progress":update.toString()
                }).whenComplete((){
                  residentialquotationlist[pos].progress = update.toString();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          OngoingProject()));
                });

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
                      'Submit ',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
            ),
            SizedBox(height: 5,),

            InkWell(
              onTap: () {

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
            ),
          ],
        ),
      ),
    );
  }
}
