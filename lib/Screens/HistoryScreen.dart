import 'dart:io';
import 'dart:math';
import 'package:custom_dialog/custom_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:homedesignapp/Config.dart';
import 'package:homedesignapp/List/Inventory_List.dart';
import 'package:homedesignapp/List/Square_Yard_List.dart';
import 'package:homedesignapp/Screens/HomeScreen.dart';
import 'package:homedesignapp/Screens/Home_Design.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:screenshot/screenshot.dart';

import 'MilestoneFinal.dart';
import 'PriceQuotation.dart';

class OngoingProject extends StatefulWidget {
  const OngoingProject({Key key}) : super(key: key);

  @override
  _OngoingProjectState createState() => _OngoingProjectState();
}

class _OngoingProjectState extends State<OngoingProject> {
  bool images;
  String imageUrl1, imageUrl2;
  int _counter = 0;
  File _imageFile;
  var result;

  //Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();

  Future<void> main() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) => pw.Center(
          child: pw.Text('Hello World!'),
        ),
      ),
    );

    final file = File(result);
    await file.writeAsBytes(await pdf.save());
  }

  @override
  void initState() {
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Screenshot(
      controller: screenshotController,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: mainColor,
            title: Text(
              'Selected Details',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
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
          body: Container(
            height: MediaQuery.of(context).size.height,
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
            Expanded(
              //height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: residentialrequestmodellist.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                //Data.Squareyard,
                                residentialrequestmodellist
                                    .elementAt(index)
                                    .sqyard,
                                style: TextSize_SqYard),
                            Divider(),
                            Row(
                              children: [
                                Container(
                                    child: Text(
                                  "Status",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                                Spacer(),
                                Container(
                                    child: Text(
                                  // Data.Room ?? "null",
                                  residentialrequestmodellist
                                      .elementAt(index)
                                      .status,

                                  style: TextStyle(
                                      fontSize: 12,
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
                                  "Rooms",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                                Spacer(),
                                Container(
                                    child: Text(
                                  // Data.Room ?? "null",
                                  residentialrequestmodellist
                                      .elementAt(index)
                                      .room,

                                  style: TextStyle(
                                      fontSize: 12,
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                                Spacer(),
                                Container(
                                    child: Text(
                                  // Data.Roof ?? "null",
                                  residentialrequestmodellist[index]
                                      .kitchen,
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                                Spacer(),
                                Container(
                                    child: Text(
                                  //  Data.Hall ?? "null",
                                  residentialrequestmodellist
                                      .elementAt(index)
                                      .hall,
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
                                  "Bathroom",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                                Spacer(),
                                Container(
                                    child: Text(
                                  //  Data.Kitchen ??"null",
                                  residentialrequestmodellist
                                      .elementAt(index)
                                      .bathroom,
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
                                  "Floor",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                                Spacer(),
                                Container(
                                    child: Text(
                                  // Data.Cost ?? "null",
                                  residentialrequestmodellist
                                      .elementAt(index)
                                      .floor,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: mainColor),
                                )),
                              ],
                            ),
                            Divider(),
                            Column(
                              children: [
                                Container(
                                  child: Image.asset(residentialrequestmodellist
                                      .elementAt(index)
                                      .image1),
                                ),
                                Container(
                                  child: Image.asset(residentialrequestmodellist
                                      .elementAt(index)
                                      .image2),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            /*Padding(
                            padding: const EdgeInsets.all(18.0),
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
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Selected Inventory",
                                        style: TextSize_SqYard),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Text("Material",
                                                  style: TextSize_SqYard),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                  InventoryList.elementAt(0)
                                                      .Material,
                                                  style: TextSize_SqYard),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  InventoryList.elementAt(1)
                                                      .Material,
                                                  style: TextSize_SqYard),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  InventoryList.elementAt(2)
                                                      .Material,
                                                  style: TextSize_SqYard),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  InventoryList.elementAt(3)
                                                      .Material,
                                                  style: TextSize_SqYard),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  InventoryList.elementAt(4)
                                                      .Material,
                                                  style: TextSize_SqYard),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  InventoryList.elementAt(5)
                                                      .Material,
                                                  style: TextSize_SqYard),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                  InventoryList.elementAt(6)
                                                      .Material,
                                                  style: TextSize_SqYard),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 45,
                                        ),
                                        Column(
                                          children: [
                                            Text("Quality",
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                                InventoryList.elementAt(0)
                                                    .Qualitytype,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                InventoryList.elementAt(1)
                                                    .Qualitytype,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                InventoryList.elementAt(2)
                                                    .Qualitytype,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                InventoryList.elementAt(3)
                                                    .Qualitytype,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                InventoryList.elementAt(4)
                                                    .Qualitytype,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                InventoryList.elementAt(5)
                                                    .Qualitytype,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                                InventoryList.elementAt(6)
                                                    .Qualitytype,
                                                style: TextSize_SqYard),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 45,
                                        ),
                                        Column(
                                          children: [
                                            Text("Cost", style: TextSize_SqYard),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(InventoryList[0].Changevalue1,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(InventoryList[1].Changevalue1,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(InventoryList[2].Changevalue1,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(InventoryList[3].Changevalue1,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(InventoryList[4].Changevalue1,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(InventoryList[5].Changevalue1,
                                                style: TextSize_SqYard),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(InventoryList[6].Changevalue1,
                                                style: TextSize_SqYard),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),*/
                            InkWell(
                              onTap: () {
                                pos =index;
                               if(residentialrequestmodellist[index].status=="accept") {

                                  percent= int.parse( residentialquotationlist[index].progress)/100;
                                 Navigator.of(context).push(MaterialPageRoute(
                                     builder: (BuildContext context) =>
                                         Milestonee()));
                               }
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
                                      'MileStone ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),
                              ),
                            ),
                            InkWell(
                              onTap: ()  {
                                pos =index;
    if(residentialrequestmodellist[index].status=="accept") {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Price()));
    }
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
                                      'View Quation',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),
                              ),
                            )

                          ],
                        ),
                      ),

                    ]);
                  }),
            ),
              ],
            ),
          )),
    );
  }

  Future<void> GenerateRequest() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    Random random = new Random();
    int trackingnumber = random.nextInt(100000);
    DatabaseReference reference = await FirebaseDatabase.instance
        .reference()
        .child("Requests")
        .child(trackingnumber.toString());
    reference.set({
      "type": "Residential",
      "sqyard": oneTwentyYardmodellist.elementAt(0).sqyard,
      "room": oneTwentyYardmodellist.elementAt(0).floorfirstroom +
          "+" +
          oneTwentyYardmodellist.elementAt(0).floorsecondroom,
      "bathroom": oneTwentyYardmodellist.elementAt(0).floorfirstbathroom +
          "+" +
          oneTwentyYardmodellist.elementAt(0).floorsecondbathroom,
      "kitchen": oneTwentyYardmodellist.elementAt(0).floorfirstkitchen +
          "+" +
          oneTwentyYardmodellist.elementAt(0).floorsecondkitchen,
      "hall": oneTwentyYardmodellist.elementAt(0).floorfirsthall +
          "+" +
          oneTwentyYardmodellist.elementAt(0).floorsecondhall,
      "floor": oneTwentyYardmodellist.elementAt(0).floor,
      "cement": InventoryList.elementAt(0).Qualitytype +
          "+" +
          InventoryList.elementAt(0).Changevalue1,
      "steel": InventoryList.elementAt(1).Qualitytype +
          "+" +
          InventoryList.elementAt(1).Changevalue1,
      "sand": InventoryList.elementAt(2).Qualitytype +
          "+" +
          InventoryList.elementAt(2).Changevalue1,
      "wood": InventoryList.elementAt(4).Qualitytype +
          "+" +
          InventoryList.elementAt(4).Changevalue1,
      "brick": InventoryList.elementAt(3).Qualitytype +
          "+" +
          InventoryList.elementAt(3).Changevalue1,
      "stone": InventoryList.elementAt(5).Qualitytype +
          "+" +
          InventoryList.elementAt(5).Changevalue1,
      "image1": oneTwentyYardmodellist.elementAt(0).floorfirstimage,
      "image2": oneTwentyYardmodellist.elementAt(0).floorsecondimage,
      "aluminium": InventoryList.elementAt(6).Qualitytype +
          "+" +
          InventoryList.elementAt(6).Changevalue1,
      "status": "pending",
      "cid": auth.currentUser.uid
    }).whenComplete(() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
      // Fluttertoast.showToast(
      //     msg: "Submitted",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.green,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
      showDialog(
        context: context,
        builder: (context) => CustomDialog(
          content: Text(
            'Submitted',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 20.0,
            ),
          ),
          title: Text(''),
          firstColor: Color(0xFF80DEEA),
          secondColor: Colors.white,
          headerIcon: Icon(
            Icons.check_circle_outline,
            size: 120.0,
            color: Colors.white,
          ),
        ),
      );
    });
  }

  uploadFirstimage() async {
    File _image;
    _image = oneTwentyYardmodellist.elementAt(0).floorfirstimage as File;
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("image1" + DateTime.now().toString());
    UploadTask uploadTask = ref.putFile(_image);

    uploadTask.then((res) async {
      String imagrurl = await ref.getDownloadURL();
      imageUrl1 = imagrurl;
    }).then((value) async {
      await uploadSecondimage();
    });
  }

  uploadSecondimage() async {
    File _image;
    _image = oneTwentyYardmodellist.elementAt(0).floorsecondimage as File;
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference ref = storage.ref().child("image2" + DateTime.now().toString());
    UploadTask uploadTask = ref.putFile(_image);

    uploadTask.then((res) async {
      String imagrurl = await ref.getDownloadURL();
      imageUrl2 = imagrurl;
    }).then((value) async {
      await GenerateRequest();
    });
  }
}
