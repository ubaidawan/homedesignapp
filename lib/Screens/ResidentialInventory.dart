import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homedesignapp/List/Inventory_List.dart';
import 'package:homedesignapp/Screens/Milestone.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';

import '../Config.dart';

class ResidentialInventory extends StatefulWidget {
  //const Inventory({Key? key}) : super(key: key);

  @override
  _ResidentialInventoryState createState() => _ResidentialInventoryState();
}

class _ResidentialInventoryState extends State<ResidentialInventory> {
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
      itemCount: 1,
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(

            child: Container(
              height:300,
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
                    Text( residentialmodellist[Data.idx].sqyard,
                        style: TextSize_SqYard),
                    Row(
                      children: [
                        Text('Aluminium'),
                        Spacer(),
                        Text(residentialmodellist[Data.idx].aluminium),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Bricks'),
                        Spacer(),
                        Text(
                            residentialmodellist[Data.idx].brick),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Cement'),
                        Spacer(),
                        Text(
                            residentialmodellist[Data.idx].cement),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Sand'),
                        Spacer(),
                        Text( residentialmodellist[Data.idx].sand),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Steel'),
                        Spacer(),
                        Text( residentialmodellist[Data.idx].steel),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Stone'),
                        Spacer(),
                        Text( residentialmodellist[Data.idx].stone),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Timber'),
                        Spacer(),
                        Text( residentialmodellist[Data.idx].timber),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Total Construction Cost '),
                        Spacer(),
                        Text( residentialmodellist[Data.idx].cost),
                      ],
                    ),
                    InkWell(
                      onTap: () async {
                        await SubmitQuotation();
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
                              'Confirm',
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

  SubmitQuotation() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    Random random = new Random();
    int trackingnumber = random.nextInt(100000);
    DatabaseReference reference = await FirebaseDatabase.instance.reference().child("Requests").child(trackingnumber.toString());
    reference.set({
      "type":residentialmodellist[Data.idx].type,
      "sqyard": residentialmodellist[Data.idx].sqyard,
      "room": residentialmodellist[Data.idx].room,
      "bathroom":residentialmodellist[Data.idx].bathroom,
      "kitchen" :residentialmodellist[Data.idx].kitchen,
      "hall":residentialmodellist[Data.idx].hall,
      "floor":residentialmodellist[Data.idx].floor,
      "cement":residentialmodellist[Data.idx].cement,
      "steel":residentialmodellist[Data.idx].steel,
      "sand":residentialmodellist[Data.idx].sand,
      "timber":residentialmodellist[Data.idx].timber,
      "brick":residentialmodellist[Data.idx].brick,
      "stone":residentialmodellist[Data.idx].stone,
      "image": residentialmodellist[Data.idx].image,
      "cost": residentialmodellist[Data.idx].cost,
      "aluminium":residentialmodellist[Data.idx].aluminium,

      "cid" : auth.currentUser.uid
    }).whenComplete(() {
      Data.idx =0;
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
