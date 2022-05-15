import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homedesignapp/List/Inventory_List.dart';
import 'package:homedesignapp/Screens/Detail_Selected.dart';
import 'package:homedesignapp/Screens/Milestone.dart';
import 'package:homedesignapp/Services/Data.dart';
import 'package:homedesignapp/global.dart';

import '../Config.dart';

class Inventoryy extends StatefulWidget {
  //const Inventory({Key? key}) : super(key: key);

  @override
  _InventoryyState createState() => _InventoryyState();
}

class _InventoryyState extends State<Inventoryy> {
  @override
  bool value = false;
  String ChangeValue;
  Widget build(BuildContext context) {
    setState(() {
      ChangeValue;
    });
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: mainColor,
          title: Text(
            'Cart',
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
                        "Select Inventory",
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ))
                ],
              ),
            ),
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: InventoryList.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 160,
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
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(InventoryList[index].Material,
                                      style: TextSize_SqYard),
                                  Row(
                                    children: [
                                      Text('Quality'),
                                      Spacer(),
                                      Text('Price')
                                    ],
                                  ),
                                  Row(
                                    //  crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'A',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Checkbox(
                                        value: InventoryList[index].A,
                                        onChanged: (newValue) {
                                          setState(() {
                                            InventoryList[index].A = newValue;
                                            InventoryList[index].B = false;
                                            InventoryList[index].C = false;
                                            ChangeValue =
                                                InventoryList[index].PriceA;
                                            InventoryList[index].Changevalue1 =
                                                ChangeValue;
                                            InventoryList[index].Qualitytype =
                                                "A";
                                            ChangeValue = "";
                                          });
                                        },
                                      ),
                                      Spacer(),
                                      Text(
                                        'B',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Checkbox(
                                        value: InventoryList[index].B,
                                        onChanged: (newValue) {
                                          setState(() {
                                            InventoryList[index].B = newValue;
                                            InventoryList[index].A = false;
                                            InventoryList[index].C = false;
                                            ChangeValue =
                                                InventoryList[index].PriceB;
                                            InventoryList[index].Changevalue1 =
                                                ChangeValue;
                                            ChangeValue = "";
                                            InventoryList[index].Qualitytype =
                                                "B";
                                          });
                                        },
                                      ),
                                      Spacer(),
                                      Text(
                                        'C',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Checkbox(
                                        value: InventoryList[index].C,
                                        onChanged: (newValue) {
                                          setState(() {
                                            InventoryList[index].C = newValue;
                                            InventoryList[index].B = false;
                                            InventoryList[index].A = false;
                                            ChangeValue =
                                                InventoryList[index].PriceC;
                                            InventoryList[index].Changevalue1 =
                                                ChangeValue;
                                            ChangeValue = "";
                                            InventoryList[index].Qualitytype =
                                                "C";
                                          });
                                        },
                                      ),
                                      Spacer(),
                                      Text(InventoryList[index].Changevalue1 ??
                                          '0'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(InventoryList[index].PriceA ?? ""),
                                      Spacer(),
                                      Text(InventoryList[index].PriceB ?? ""),
                                      Spacer(),
                                      Text(InventoryList[index].PriceC ?? ""),
                                      Spacer(),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  InkWell(
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
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Center(
                            child: Text(
                          "Save",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )));
  }
}
