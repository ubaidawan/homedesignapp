import 'package:flutter/material.dart';
import 'package:homedesignapp/List/Inventory_List.dart';

import 'Screens/Inventory.dart';

class Twoforty extends StatefulWidget {
  const Twoforty({Key key}) : super(key: key);

  @override
  _TwofortyState createState() => _TwofortyState();
}

class _TwofortyState extends State<Twoforty> {
  @override
  String _ROOM = 'Select Rooms';
  String _HALL = 'Select Hall';
  String _KIT = 'Select Kitchen';
  String _BATH = 'Select Bathroom';
  String _FLOOR = 'Select Floor';


  String _ROOM2 = 'Select Second Floor Rooms';
  String _HALL2 = 'Select Second Floor Hall';
  String _KIT2 = 'Select Second Floor Kitchen';
  String _BATH2 = 'Select Second Floor Bathroom';
  bool Two=false;
  var image;
  var image2;
  var text;

  FindMap(){

    int Room = int.parse(_ROOM);
    int Hall = int.parse(_HALL);
    int Kitchen = int.parse(_KIT);
    int Bathroom = int.parse(_BATH);
    int floor = int.parse(_FLOOR);
    // int Room2 = int.parse(_ROOM2);
    // int Hall2 = int.parse(_HALL2);
    // int Kitchen2 = int.parse(_KIT2);
    // int Bathroom2 = int.parse(_BATH2);
    if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 1 ) {
      image = "assets/120sq.jpg";
      text = true;
    } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 2 ) {
      image = "assets/back.png";
      text = true;
    } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 3 ) {
      image = "assets/booking.png";
      text = true;
    }
    else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 4 ) {
      image = "assets/booking.png";
      text = true;
    } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 1 ) {
      image = "assets/comm.jpg";
      text = true;
    } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 2 ) {
      image = "assets/hdhouse.png";
      text = true;
    } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 3 ) {
      image = "assets/history.png";
      text = true;
    }
    else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 4 ) {
      image = "assets/history.png";
      text = true;
    } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 1 ) {
      image = "assets/home.jpg";
      text = true;
    } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 2 ) {
      image = "assets/img.jpg";
      text = true;
    } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 3 ) {
      image = "assets/logos.png";
      text = true;
    }
    else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 4 ) {
      image = "assets/logos.png";
      text = true;
    }
    else if (Room == 4 && Hall == 1 && Kitchen == 1 && Bathroom == 1 ) {
      image = "assets/logos.png";
      text = true;
    }
    else if (Room == 4 && Hall == 1 && Kitchen == 1 && Bathroom == 2 ) {
      image = "assets/logos.png";
      text = true;
    }
    else if (Room == 4 && Hall == 1 && Kitchen == 1 && Bathroom == 3 ) {
      image = "assets/logos.png";
      text = true;
    }
    else if (Room == 4 && Hall == 1 && Kitchen == 1 && Bathroom == 4 ) {
      image = "assets/logos.png";
      text = true;
    }
  }
  Floor2(){
    int floor = int.parse(_FLOOR);
    int Room2 = int.parse(_ROOM2);
    int Hall2 = int.parse(_HALL2);
    int Kitchen2 = int.parse(_KIT2);
    int Bathroom2 = int.parse(_BATH2);
    if (Room2 == 1 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 ==1 ) {
      image2 = "assets/120sq.jpg";
      text = true;
    } else if (Room2 == 1 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 2) {
      image2 = "assets/back.png";
      text = true;
    } else if (Room2 == 1 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 3) {
      image2 = "assets/booking.png";
      text = true;
    } else if (Room2 == 2 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 1 ) {
      image2 = "assets/comm.jpg";
      text = true;
    } else if (Room2 == 2 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 2) {
      image2 = "assets/hdhouse.png";
      text = true;
    } else if (Room2 == 2 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 3 ) {
      image2 = "assets/history.png";
      text = true;
    } else if (Room2 == 3 && Hall2== 1 && Kitchen2 == 1 && Bathroom2 == 1 ) {
      image2 = "assets/home.jpg";
      text = true;
    } else if (Room2 == 3 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 2 ) {
      image2 = "assets/img.jpg";
      text = true;
    } else if (Room2 == 3 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 3 ) {
      image2 = "assets/logos.png";
      text = true;
    }
  }

  Widget build(BuildContext context) {
    setState(() {
      Two;
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("240 Square Yards")),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*2,
          width: MediaQuery.of(context).size.width,

          //   padding: EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: DropdownButtonFormField<String>(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 17,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                        ),
                        value: _FLOOR,
                        items: <String>[
                          'Select Floor',
                          '1',
                          '2',
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (newVal) {
                          setState(() {
                            _FLOOR = newVal;
                            print(_FLOOR);
                            int floor = int.parse(_FLOOR);
                            if(floor == 2){

                              setState(() {
                                Two = true;
                                oneTwentyYardmodellist[0].floor ="2";
                              });

                            }else{
                              setState(() {
                                Two = false;
                                oneTwentyYardmodellist[0].floor ="1";
                              });
                            }
                          });

                        }
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: DropdownButtonFormField<String>(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 17,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                        ),
                        value: _ROOM,
                        items: <String>[
                          'Select Rooms',
                          '1',
                          '2',
                          '3',
                          '4',
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (newVal) {
                          setState(() {
                            _ROOM = newVal;
                            oneTwentyYardmodellist[0].sqyard="240";
                            oneTwentyYardmodellist[0].floorfirstroom = _ROOM;
                            print(_ROOM);
                          });
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: DropdownButtonFormField<String>(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 17,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                        ),
                        value: _BATH,
                        items: <String>[
                          'Select Bathroom',
                          '1',
                          '2',
                          '3',
                          '4',
                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (newVal) {
                          setState(() {
                            _BATH = newVal;
                            oneTwentyYardmodellist[0].floorfirstbathroom = _BATH;
                            print(_BATH);
                          });
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: DropdownButtonFormField<String>(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 17,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                        ),
                        value: _HALL,
                        items: <String>[
                          'Select Hall',
                          '1',

                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (newVal) {
                          setState(() {
                            _HALL = newVal;
                            oneTwentyYardmodellist[0].floorfirsthall = _HALL;
                            print(_HALL);
                          });
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: DropdownButtonFormField<String>(
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 17,
                        elevation: 16,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey[800]),
                        ),
                        value: _KIT,
                        items: <String>[
                          'Select Kitchen',
                          '1',

                        ].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (newVal) {
                          setState(() {
                            _KIT = newVal;
                            oneTwentyYardmodellist[0].floorfirstkitchen = _KIT;
                            print(_KIT);
                          });
                        }),
                  ),
                ),

                Two ? Padding(
                  padding: const EdgeInsets.only(left: 28.0,right: 28),
                  child: Container(
                    // width: MediaQuery.of(context).size.width/1.4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Floor Second"),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: DropdownButtonFormField<String>(
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize: 17,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    hintStyle: TextStyle(color: Colors.grey[800]),
                                  ),
                                  value: _ROOM2,
                                  items: <String>[
                                    'Select Second Floor Rooms',
                                    '1',
                                    '2',
                                    '3',
                                    '4',
                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newVal) {
                                    setState(() {
                                      _ROOM2 = newVal;
                                      oneTwentyYardmodellist[0].floorsecondroom = _ROOM2;
                                      print(_ROOM2);
                                    });
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: DropdownButtonFormField<String>(
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize: 17,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    hintStyle: TextStyle(color: Colors.grey[800]),
                                  ),
                                  value: _BATH2,
                                  items: <String>[
                                    'Select Second Floor Bathroom',
                                    '1',
                                    '2',
                                    '3',
                                    '4',
                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newVal) {
                                    setState(() {
                                      _BATH2 = newVal;
                                      oneTwentyYardmodellist[0].floorsecondbathroom = _BATH2;
                                      print(_BATH2);
                                    });
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: DropdownButtonFormField<String>(
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize: 17,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    hintStyle: TextStyle(color: Colors.grey[800]),
                                  ),
                                  value: _HALL2,
                                  items: <String>[
                                    'Select Second Floor Hall',
                                    '1',

                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newVal) {
                                    setState(() {
                                      _HALL2 = newVal;
                                      oneTwentyYardmodellist[0].floorsecondhall = _HALL2;
                                      print(_HALL2);
                                    });
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: DropdownButtonFormField<String>(
                                  icon: Icon(Icons.keyboard_arrow_down),
                                  iconSize: 17,
                                  elevation: 16,
                                  style: TextStyle(color: Colors.grey),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    hintStyle: TextStyle(color: Colors.grey[800]),
                                  ),
                                  value: _KIT2,
                                  items: <String>[
                                    'Select Second Floor Kitchen',
                                    '1',

                                  ].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (newVal) {
                                    setState(() {
                                      _KIT2 = newVal;
                                      oneTwentyYardmodellist[0].floorsecondkitchen = _KIT2;
                                      print(_KIT2);
                                    });
                                  }),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ) : Container(),
                RaisedButton(
                    color: Colors.cyan,

                    onPressed: () async {
                      // int floor = int.parse(_FLOOR);
                      // if(floor == 2){
                      //   SECFloor == true;
                      //   setState(() {
                      //     Floor2();
                      //   });
                      //
                      // }else{
                      //   SECFloor == false;
                      // }
                      await FindMap();

                      setState(() {
                        image;
                        //  SECFloor;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                        child: Text('Show Selected Map',
                            style: TextStyle(
                                color: Colors.black, fontSize: 20)))),
                RaisedButton(
                    color: Colors.cyan,

                    onPressed: () async {
                      // int floor = int.parse(_FLOOR);
                      // if(floor == 2){
                      //   SECFloor == true;
                      //   setState(() {
                      //     Floor2();
                      //   });
                      //
                      // }else{
                      //   SECFloor == false;
                      // }
                      await Floor2();

                      setState(() {
                        image2;
                        //  SECFloor;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                        child: Text('Show Selected Map Floor 2',
                            style: TextStyle(
                                color: Colors.black, fontSize: 20)))),
                Expanded(
                    child: Image.asset(image ?? "assets/user.png")),
                Expanded(
                    child: Image.asset(image2 ?? "assets/user.png")),
                Center(
                  child: SizedBox(
                      height: 50,
                      width: 200,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Inventoryy()),
                          );
                        },
                        color: Colors.cyan,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}