import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homedesignapp/Config.dart';
import 'package:homedesignapp/List/Commercial.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';

import 'Inventory.dart';

class CommercialPage extends StatefulWidget {
  // const CommercialPage({Key key}) : super(key: key);

  @override
  _CommercialPageState createState() => _CommercialPageState();
}

class _CommercialPageState extends State<CommercialPage> {
  @override
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
              onPressed: () {},
              icon: Icon(Icons.account_circle, color: Colors.white),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
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
                          width: 250,
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
                            "Select Area",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: mainColor,
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1.2,
                  child: SY_Container(),
                ),
              ],
            ),
          ),
        ));
  }

  Widget SY_Container() {

    return ListView.builder(
      itemCount: commercialmodellist.length,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(

            child: Container(

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
                    Text( commercialmodellist[index].sqfeet,
                        style: TextSize_SqYard),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 250,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent)),
                          child: Image.network(commercialmodellist[Data.idx].image ,
                            )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Total Cost'),
                          Spacer(),
                          Text(
                              commercialmodellist[index].cost),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        Data.idx = index;
                        await SaveData();
                       /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home_Design()));*/

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
                              'Submit',
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

  SaveData() {
    Random random = new Random();
    int trackingnumber = random.nextInt(100000);
    DatabaseReference reference = FirebaseDatabase.instance.reference().child("Requests").child(trackingnumber.toString());
    reference.set({
      "cost": commercialmodellist[Data.idx].cost,
      "image" : commercialmodellist[Data.idx].image,
      "sqfeet": commercialmodellist[Data.idx].sqfeet,
      "type":commercialmodellist[Data.idx].type,
      "cid" : commercialmodellist[Data.idx].uid
    }).whenComplete(() {
      Navigator.pop(context);
      Fluttertoast.showToast(
          msg: "Submitted",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    });

  }
}
