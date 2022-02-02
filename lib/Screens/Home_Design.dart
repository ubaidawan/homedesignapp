import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homedesignapp/Config.dart';
import 'package:homedesignapp/List/Square_Yard_List.dart';
import 'package:homedesignapp/Screens/ResidentialInventory.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';

class Home_Design extends StatefulWidget {
  // const Home_Design({Key key}) : super(key: key);

  @override
  _Home_DesignState createState() => _Home_DesignState();
}

class _Home_DesignState extends State<Home_Design> {
  @override
  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool _loading = true;

  String image;
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
          'Selected Area',
          style: TextStyle(
              color: Colors.black87, fontSize: 25, fontWeight: FontWeight.bold),
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
                      width: 300,
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
                        "Select Design",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ))
                ],
              ),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height,
          SY_Image(),
           // ),
          ],
        ),
      ),
    );
  }

  Widget SY_Image() {
    return Expanded(
      child: ListView.builder(
        // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 650,
        //     //childAspectRatio: (itemWidth / itemHeight),
        //     crossAxisSpacing: 1,
        //     mainAxisSpacing: 1),
        itemCount: 1,
        itemBuilder: (BuildContext ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              child: Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: Offset(-10.0, 10.0),
                        blurRadius: 20.0,
                        spreadRadius: 4.0),
                  ],
                ),
                child: Column(
               //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(residentialmodellist[Data.idx].sqyard,
                        style: TextSize_SqYard),
                    Expanded(
                   //         height: 250,
                   //         width: MediaQuery.of(context).size.width,
                   //          decoration: BoxDecoration(
                   //              border: Border.all(color: Colors.blueAccent)),
                        child: Image.network(residentialmodellist[Data.idx].image ,
                        // height: 100.0,
                        // width: 100.0,
                        )
                    ),
                      SizedBox(height: 19,),

                    InkWell(
                      onTap: () {
                     //   Data.image = image;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ResidentialInventory()));
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
                    ), //next Button
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
