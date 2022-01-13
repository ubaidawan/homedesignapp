import 'package:flutter/material.dart';
import 'package:homedesignapp/List/Inventory_List.dart';
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
  Widget build(BuildContext context) {
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
                            height: 200,
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
                                  Text(InventoryList[index].Material ,
                                      style: TextSize_SqYard),
                                  Row(
                                    children: [
                                      Text(
                                        'Quantity',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),
                                      // Text(
                                      //   'Quantity',
                                      //   style: TextStyle(
                                      //       fontSize: 16,
                                      //       fontWeight: FontWeight.bold),
                                      // ),
                                      // Spacer(),
                                      Text(
                                        'Price',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  // Divider(),
                                  // Row(
                                  //   children: [
                                  //     DropdownButton<String>(
                                  //       items: <String>['A', 'B', 'C']
                                  //           .map((String value) {
                                  //         return DropdownMenuItem<String>(
                                  //           value: value,
                                  //           child: Text(
                                  //             value,
                                  //             style: TextStyle(
                                  //                 fontSize: 14,
                                  //                 fontWeight: FontWeight.bold),
                                  //           ),
                                  //         );
                                  //       }).toList(),
                                  //       onChanged: (_) {},
                                  //     ),
                                  //     //   Text('Store'),
                                  //
                                  //     Spacer(),
                                  //     Container(
                                  //       padding: EdgeInsets.all(3),
                                  //       decoration: BoxDecoration(
                                  //           borderRadius:
                                  //               BorderRadius.circular(5),
                                  //           color:
                                  //               Theme.of(context).accentColor),
                                  //       child: Row(
                                  //         children: [
                                  //           InkWell(
                                  //               onTap: () {
                                  //                 setState(() {
                                  //                   InventoryList[index]
                                  //                       .Count--;
                                  //                   //  _Count--;
                                  //                 });
                                  //               },
                                  //               child: Icon(
                                  //                 Icons.remove,
                                  //                 color: Colors.white,
                                  //                 size: 16,
                                  //               )),
                                  //           Container(
                                  //             margin: EdgeInsets.symmetric(
                                  //                 horizontal: 3),
                                  //             padding: EdgeInsets.symmetric(
                                  //                 horizontal: 3, vertical: 2),
                                  //             decoration: BoxDecoration(
                                  //                 borderRadius:
                                  //                     BorderRadius.circular(3),
                                  //                 color: Colors.white),
                                  //             child: Text(
                                  //               InventoryList[index]
                                  //                   .Count
                                  //                   .toString(),
                                  //               style: TextStyle(
                                  //                   color: Colors.black,
                                  //                   fontSize: 16),
                                  //             ),
                                  //           ),
                                  //           InkWell(
                                  //               onTap: () {
                                  //                 setState(() {
                                  //                   InventoryList[index]
                                  //                       .Count++;
                                  //                   //  _Count++;
                                  //                 });
                                  //               },
                                  //               child: Icon(
                                  //                 Icons.add,
                                  //                 color: Colors.white,
                                  //                 size: 16,
                                  //               )),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     Spacer(),
                                  //     Text(
                                  //       InventoryList[index].Price ,
                                  //       style: TextStyle(
                                  //           fontSize: 18,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //   ],
                                  // ),
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
                          builder: (BuildContext context) => Milestone()));
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
