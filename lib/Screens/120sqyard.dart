//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:homedesignapp/120/120Model.dart';
// import 'package:homedesignapp/Screens/HomeNav.dart';
//
// import '../global.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Sqyard(),
//   ));
// }
//
// class Sqyard extends StatefulWidget {
//   @override
//   _SqyardState createState() => _SqyardState();
// }
//
// class _SqyardState extends State<Sqyard> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//
//
//
//   String _ROOM = 'Select Rooms';
//   String _HALL = 'Select Hall';
//   String _KIT = 'Select Kitchen';
//   String _BATH = 'Select Bathroom';
//   String _FLOOR = 'Select Floor';
//
//
//   String _ROOM2 = 'Select Second Floor Rooms';
//   String _HALL2 = 'Select Second FloorHall';
//   String _KIT2 = 'Select Second Floor Kitchen';
//   String _BATH2 = 'Select Second Floor Bathroom';
//   //String _FLOOR = 'Select Floor';
//   //  int  SecFloor ;
//     bool  SECFloor  ;
//   var image;
//   var image2;
//   bool text = false;
//
//
//   //SQyard_OneTwenty
//   FindMap() {
//     int Room = int.parse(_ROOM);
//     int Hall = int.parse(_HALL);
//     int Kitchen = int.parse(_KIT);
//     int Bathroom = int.parse(_BATH);
//     int Room2 = int.parse(_ROOM2);
//     int Hall2 = int.parse(_HALL2);
//     int Kitchen2 = int.parse(_KIT2);
//     int Bathroom2 = int.parse(_BATH2);
//     int floor = int.parse(_FLOOR);
//     // if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 1 &&
//     //     floor == 1) {
//     //   image = "assets/120sq.jpg";
//     //   text = true;
//     // } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 2 &&
//     //     floor == 1) {
//     //   image = "assets/back.png";
//     //   text = true;
//     // } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 3 &&
//     //     floor == 1) {
//     //   image = "assets/booking.png";
//     //   text = true;
//     // } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 1 &&
//     //     floor == 1) {
//     //   image = "assets/comm.jpg";
//     //   text = true;
//     // } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 2 &&
//     //     floor == 1) {
//     //   image = "assets/hdhouse.png";
//     //   text = true;
//     // } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 3 &&
//     //     floor == 1) {
//     //   image = "assets/history.png";
//     //   text = true;
//     // } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 1 &&
//     //     floor == 1) {
//     //   image = "assets/home.jpg";
//     //   text = true;
//     // } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 2 &&
//     //     floor == 1) {
//     //   image = "assets/img.jpg";
//     //   text = true;
//     // } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 3 &&
//     //     floor == 1) {
//     //   image = "assets/logos.png";
//     //   text = true;
//     // }
//     if (floor ==  1  ) {
//       if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 1 &&
//           floor == 1) {
//         image = "assets/120sq.jpg";
//         text = true;
//       } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 2 &&
//           floor == 1) {
//         image = "assets/back.png";
//         text = true;
//       } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 3 &&
//           floor == 1) {
//         image = "assets/booking.png";
//         text = true;
//       } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 1 &&
//           floor == 1) {
//         image = "assets/comm.jpg";
//         text = true;
//       } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 2 &&
//           floor == 1) {
//         image = "assets/hdhouse.png";
//         text = true;
//       } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 3 &&
//           floor == 1) {
//         image = "assets/history.png";
//         text = true;
//       } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 1 &&
//           floor == 1) {
//         image = "assets/home.jpg";
//         text = true;
//       } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 2 &&
//           floor == 1) {
//         image = "assets/img.jpg";
//         text = true;
//       } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 3 &&
//           floor == 1) {
//         image = "assets/logos.png";
//         text = true;
//       }
//     } else {
//       if (Room2 == 1 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 1) {
//         image2 = "assets/120sq.jpg";
//         text = true;
//       } else if (Room2 == 1 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 2){
//         image2 = "assets/back.png";
//         text = true;
//
//       } else if (Room2 == 1 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 3 ){
//         image2 = "assets/booking.png";
//         text = true;
//
//       } else if (Room2 == 2 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 1 ){
//         image2 = "assets/comm.jpg";
//         text = true;
//
//       } else if (Room2 == 2 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 2){
//         image2 = "assets/hdhouse.png";
//         text = true;
//
//       } else if (Room2 == 2 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 3 ){
//         image2 = "assets/history.png";
//         text = true;
//
//       } else if (Room2 == 3 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 1 ){
//         image2 = "assets/home.jpg";
//         text = true;
//
//       } else if (Room2 == 3 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2== 2 ){
//         image2 = "assets/img.jpg";
//         text = true;
//
//       } else if (Room2 == 3 && Hall2 == 1 && Kitchen2 == 1 && Bathroom2 == 3 ){
//         image2 = "assets/logos.png";
//         text = true;
//
//       }
//
//     }
//   }
//   //   if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 1 && floor == 1) {
//   //     image = "assets/120sq.jpg";
//   //     text = true;
//   //   } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 2 && floor == 1){
//   //     image = "assets/back.png";
//   //     text = true;
//   //
//   //   } else if (Room == 1 && Hall == 1 && Kitchen == 1 && Bathroom == 3 && floor == 1){
//   //     image = "assets/booking.png";
//   //     text = true;
//   //
//   //   } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 1 && floor == 1){
//   //     image = "assets/comm.jpg";
//   //     text = true;
//   //
//   //   } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 2 && floor == 1){
//   //     image = "assets/hdhouse.png";
//   //     text = true;
//   //
//   //   } else if (Room == 2 && Hall == 1 && Kitchen == 1 && Bathroom == 3 && floor == 1){
//   //     image = "assets/history.png";
//   //     text = true;
//   //
//   //   } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 1 && floor == 1){
//   //     image = "assets/home.jpg";
//   //     text = true;
//   //
//   //   } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 2 && floor == 1){
//   //     image = "assets/img.jpg";
//   //     text = true;
//   //
//   //   } else if (Room == 3 && Hall == 1 && Kitchen == 1 && Bathroom == 3 && floor == 1){
//   //     image = "assets/logos.png";
//   //     text = true;
//   //
//   //   }
//   // }
//       int Two ;
//       // FloorChek(){
//       //  Two = int.parse(_FLOOR);
//       //   if(floor == 2){
//       //     SECFloor == true;
//       //   }else{
//       //     SECFloor == false;
//       //   }
//       // }
//
//   @override
//   Widget build(BuildContext context) {
//
// setState(() {
//    Two ;
// });
//
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.cyan,
//           title: Center(child: Text("120 Square Yards")),
//         ),
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           color: Colors.black12,
//           padding: EdgeInsets.all(15.0),
//           child: SingleChildScrollView(
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: MediaQuery.of(context).size.width / 1.3,
//                     child: DropdownButtonFormField<String>(
//                         icon: Icon(Icons.keyboard_arrow_down),
//                         iconSize: 17,
//                         elevation: 16,
//                         style: TextStyle(color: Colors.grey),
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                             borderRadius: const BorderRadius.all(
//                               const Radius.circular(10.0),
//                             ),
//                           ),
//                           hintStyle: TextStyle(color: Colors.grey[800]),
//                         ),
//                         value: _FLOOR,
//                         items: <String>[
//                           'Select Floor',
//                           '1',
//                           '2',
//
//
//                         ].map((String value) {
//                           return new DropdownMenuItem<String>(
//                             value: value,
//                             child: new Text(value),
//                           );
//                         }).toList(),
//                         onChanged: (newVal) {
//                           setState(() {
//                             _FLOOR = newVal;
//                             print(_FLOOR);
//                             int floor = int.parse(_FLOOR);
//                             if(floor == 2){
//
//                               setState(() {
//                                 Two = 2;
//                               });
//
//                             }else{
//                               setState(() {
//                                 Two = 1;
//                               });
//                             }
//                           });
//
//                         }),
//                   ),
//                 ),
//                   if (Two == 1) ...[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _ROOM,
//                             items: <String>[
//                               'Select Rooms',
//                               '1',
//                               '2',
//                               '3',
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _ROOM = newVal;
//                                 print(_ROOM);
//                               });
//                             }),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _BATH,
//                             items: <String>[
//                               'Select Bathroom',
//                               '1',
//                               '2',
//                               '3',
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _BATH = newVal;
//                                 print(_BATH);
//                               });
//                             }),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _HALL,
//                             items: <String>[
//                               'Select Hall',
//                               '1',
//
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _HALL = newVal;
//                                 print(_HALL);
//                               });
//                             }),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _KIT,
//                             items: <String>[
//                               'Select Kitchen',
//                               '1',
//
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _KIT = newVal;
//                                 print(_KIT);
//                               });
//                             }),
//                       ),
//                     ),
//
//                   ] else if(Two == 2)...[
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _ROOM2,
//                             items: <String>[
//                               'Select Second Floor Rooms',
//                               '1',
//                               '2',
//                               '3',
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _ROOM2 = newVal;
//                                 print(_ROOM2);
//                               });
//                             }),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _BATH2,
//                             items: <String>[
//                               'Select Second Floor Bathroom',
//                               '1',
//                               '2',
//                               '3',
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _BATH2 = newVal;
//                                 print(_BATH2);
//                               });
//                             }),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _HALL2,
//                             items: <String>[
//                               'Select Second Floor Hall',
//                               '1',
//
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _HALL2 = newVal;
//                                 print(_HALL2);
//                               });
//                             }),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         width: MediaQuery.of(context).size.width / 1.3,
//                         child: DropdownButtonFormField<String>(
//                             icon: Icon(Icons.keyboard_arrow_down),
//                             iconSize: 17,
//                             elevation: 16,
//                             style: TextStyle(color: Colors.grey),
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius: const BorderRadius.all(
//                                   const Radius.circular(10.0),
//                                 ),
//                               ),
//                               hintStyle: TextStyle(color: Colors.grey[800]),
//                             ),
//                             value: _KIT2,
//                             items: <String>[
//                               'Select Second Floor Kitchen',
//                               '1',
//
//                             ].map((String value) {
//                               return new DropdownMenuItem<String>(
//                                 value: value,
//                                 child: new Text(value),
//                               );
//                             }).toList(),
//                             onChanged: (newVal) {
//                               setState(() {
//                                 _KIT2 = newVal;
//                                 print(_KIT2);
//                               });
//                             }),
//                       ),
//                     ),
//
//                     Container(
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 1.3,
//                               child: DropdownButtonFormField<String>(
//                                   icon: Icon(Icons.keyboard_arrow_down),
//                                   iconSize: 17,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.grey),
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: const BorderRadius.all(
//                                         const Radius.circular(10.0),
//                                       ),
//                                     ),
//                                     hintStyle: TextStyle(color: Colors.grey[800]),
//                                   ),
//                                   value: _ROOM2,
//                                   items: <String>[
//                                     'Select Rooms',
//                                     '1',
//                                     '2',
//                                     '3',
//                                   ].map((String value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value,
//                                       child: new Text(value),
//                                     );
//                                   }).toList(),
//                                   onChanged: (newVal) {
//                                     setState(() {
//                                       _ROOM2 = newVal;
//                                       print(_ROOM2);
//                                     });
//                                   }),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 1.3,
//                               child: DropdownButtonFormField<String>(
//                                   icon: Icon(Icons.keyboard_arrow_down),
//                                   iconSize: 17,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.grey),
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: const BorderRadius.all(
//                                         const Radius.circular(10.0),
//                                       ),
//                                     ),
//                                     hintStyle: TextStyle(color: Colors.grey[800]),
//                                   ),
//                                   value: _BATH2,
//                                   items: <String>[
//                                     'Select Bathroom',
//                                     '1',
//                                     '2',
//                                     '3',
//                                   ].map((String value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value,
//                                       child: new Text(value),
//                                     );
//                                   }).toList(),
//                                   onChanged: (newVal) {
//                                     setState(() {
//                                       _BATH2 = newVal;
//                                       print(_BATH2);
//                                     });
//                                   }),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 1.3,
//                               child: DropdownButtonFormField<String>(
//                                   icon: Icon(Icons.keyboard_arrow_down),
//                                   iconSize: 17,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.grey),
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: const BorderRadius.all(
//                                         const Radius.circular(10.0),
//                                       ),
//                                     ),
//                                     hintStyle: TextStyle(color: Colors.grey[800]),
//                                   ),
//                                   value: _HALL2,
//                                   items: <String>[
//                                     'Select Hall',
//                                     '1',
//
//                                   ].map((String value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value,
//                                       child: new Text(value),
//                                     );
//                                   }).toList(),
//                                   onChanged: (newVal) {
//                                     setState(() {
//                                       _HALL2 = newVal;
//                                       print(_HALL2);
//                                     });
//                                   }),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Container(
//                               width: MediaQuery.of(context).size.width / 1.3,
//                               child: DropdownButtonFormField<String>(
//                                   icon: Icon(Icons.keyboard_arrow_down),
//                                   iconSize: 17,
//                                   elevation: 16,
//                                   style: TextStyle(color: Colors.grey),
//                                   decoration: InputDecoration(
//                                     border: OutlineInputBorder(
//                                       borderRadius: const BorderRadius.all(
//                                         const Radius.circular(10.0),
//                                       ),
//                                     ),
//                                     hintStyle: TextStyle(color: Colors.grey[800]),
//                                   ),
//                                   value: _KIT2,
//                                   items: <String>[
//                                     'Select Kitchen',
//                                     '1',
//
//                                   ].map((String value) {
//                                     return new DropdownMenuItem<String>(
//                                       value: value,
//                                       child: new Text(value),
//                                     );
//                                   }).toList(),
//                                   onChanged: (newVal) {
//                                     setState(() {
//                                       _KIT2 = newVal;
//                                       print(_KIT2);
//                                     });
//                                   }),
//                             ),
//                           ),
//
//                         ],
//                       ),
//
//                     ),
//                   ],
//
//
//                     // Two == 2 ?  Floor2():Container(child: Text('data')),
//                   //SECFloor == null,),
//                    // SECFloor == null ?  :Text('d2ata') ,
//                   RaisedButton(
//                       color: Colors.cyan,
//
//                       onPressed: () async {
//                         // int floor = int.parse(_FLOOR);
//                         // if(floor == 2){
//                         //   SECFloor == true;
//                         //   setState(() {
//                         //     Floor2();
//                         //   });
//                         //
//                         // }else{
//                         //   SECFloor == false;
//                         // }
//                         await FindMap();
//                         setState(() {
//                           image;
//                           SECFloor;
//                         });
//                       },
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12.0)),
//                       child: Container(
//                           child: text
//                               ? Text(
//                                   'Next',
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 20),
//                                 )
//                               : Text('Show Selected Map',
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 20)))),
//                   text ?  Container(
//                     // height: 30,
//                     // width: 500,
//                     color: Colors.red,
//                     child: Expanded(
//                         child: Image.asset(image ?? "assets/user.png")),
//                   ) : Container(
//                     child: Text(""),
//                   ),
//                   // text ?  Container(
//                   //   // height: 30,
//                   //   // width: 500,
//                   //   color: Colors.red,
//                   //   child: Expanded(
//                   //       child: Image.asset(image2 ?? "assets/user.png")),
//                   // ) : Container(
//                   //   child: Text(""),
//                  // ),
//                   // Container(
//                   //   height: 200,
//                   //   child: Expanded(child: Image.asset(image2 ?? "assets/user.png")),
//                   //   ),
//
//                   // SecFloor ? Container(
//                   //   child: Column(
//                   //     children: [],
//                   //   ),
//                   // ) : Container(),
//                   InkWell(
//                     onTap: (){
//                       int Room = int.parse(_ROOM);
//                       int Hall = int.parse(_HALL);
//                       int Kitchenn = int.parse(_KIT);
//                       int Bathroom = int.parse(_BATH);
//                       int flor = int.parse(_FLOOR);
//                       room = Room;
//                       hall = Hall;
//                       kitchen =Kitchenn;
//                       bathroom =Bathroom;
//                       floor = flor;
//                       imagee =image;
//
//
//
//
//                     },
//                     child: Container(
//                       height: 50,
//                       width:MediaQuery.of(context).size.width,
//                       color: Colors.cyan,
//                       child: Center(child: Text("Save")),
//                     ),
//                   ),
//                 ]),
//           ),
//         ));
//   }
//   // Widget Floor2(){
//   //   return  Container(
//   //     child: Column(
//   //       children: [
//   //         Padding(
//   //           padding: const EdgeInsets.all(8.0),
//   //           child: Container(
//   //             width: MediaQuery.of(context).size.width / 1.3,
//   //             child: DropdownButtonFormField<String>(
//   //                 icon: Icon(Icons.keyboard_arrow_down),
//   //                 iconSize: 17,
//   //                 elevation: 16,
//   //                 style: TextStyle(color: Colors.grey),
//   //                 decoration: InputDecoration(
//   //                   border: OutlineInputBorder(
//   //                     borderRadius: const BorderRadius.all(
//   //                       const Radius.circular(10.0),
//   //                     ),
//   //                   ),
//   //                   hintStyle: TextStyle(color: Colors.grey[800]),
//   //                 ),
//   //                 value: _ROOM2,
//   //                 items: <String>[
//   //                   'Select Rooms',
//   //                   '1',
//   //                   '2',
//   //                   '3',
//   //                 ].map((String value) {
//   //                   return new DropdownMenuItem<String>(
//   //                     value: value,
//   //                     child: new Text(value),
//   //                   );
//   //                 }).toList(),
//   //                 onChanged: (newVal) {
//   //                   setState(() {
//   //                     _ROOM2 = newVal;
//   //                     print(_ROOM2);
//   //                   });
//   //                 }),
//   //           ),
//   //         ),
//   //         Padding(
//   //           padding: const EdgeInsets.all(8.0),
//   //           child: Container(
//   //             width: MediaQuery.of(context).size.width / 1.3,
//   //             child: DropdownButtonFormField<String>(
//   //                 icon: Icon(Icons.keyboard_arrow_down),
//   //                 iconSize: 17,
//   //                 elevation: 16,
//   //                 style: TextStyle(color: Colors.grey),
//   //                 decoration: InputDecoration(
//   //                   border: OutlineInputBorder(
//   //                     borderRadius: const BorderRadius.all(
//   //                       const Radius.circular(10.0),
//   //                     ),
//   //                   ),
//   //                   hintStyle: TextStyle(color: Colors.grey[800]),
//   //                 ),
//   //                 value: _BATH2,
//   //                 items: <String>[
//   //                   'Select Bathroom',
//   //                   '1',
//   //                   '2',
//   //                   '3',
//   //                 ].map((String value) {
//   //                   return new DropdownMenuItem<String>(
//   //                     value: value,
//   //                     child: new Text(value),
//   //                   );
//   //                 }).toList(),
//   //                 onChanged: (newVal) {
//   //                   setState(() {
//   //                     _BATH2 = newVal;
//   //                     print(_BATH2);
//   //                   });
//   //                 }),
//   //           ),
//   //         ),
//   //         Padding(
//   //           padding: const EdgeInsets.all(8.0),
//   //           child: Container(
//   //             width: MediaQuery.of(context).size.width / 1.3,
//   //             child: DropdownButtonFormField<String>(
//   //                 icon: Icon(Icons.keyboard_arrow_down),
//   //                 iconSize: 17,
//   //                 elevation: 16,
//   //                 style: TextStyle(color: Colors.grey),
//   //                 decoration: InputDecoration(
//   //                   border: OutlineInputBorder(
//   //                     borderRadius: const BorderRadius.all(
//   //                       const Radius.circular(10.0),
//   //                     ),
//   //                   ),
//   //                   hintStyle: TextStyle(color: Colors.grey[800]),
//   //                 ),
//   //                 value: _HALL2,
//   //                 items: <String>[
//   //                   'Select Hall',
//   //                   '1',
//   //
//   //                 ].map((String value) {
//   //                   return new DropdownMenuItem<String>(
//   //                     value: value,
//   //                     child: new Text(value),
//   //                   );
//   //                 }).toList(),
//   //                 onChanged: (newVal) {
//   //                   setState(() {
//   //                     _HALL2 = newVal;
//   //                     print(_HALL2);
//   //                   });
//   //                 }),
//   //           ),
//   //         ),
//   //         Padding(
//   //           padding: const EdgeInsets.all(8.0),
//   //           child: Container(
//   //             width: MediaQuery.of(context).size.width / 1.3,
//   //             child: DropdownButtonFormField<String>(
//   //                 icon: Icon(Icons.keyboard_arrow_down),
//   //                 iconSize: 17,
//   //                 elevation: 16,
//   //                 style: TextStyle(color: Colors.grey),
//   //                 decoration: InputDecoration(
//   //                   border: OutlineInputBorder(
//   //                     borderRadius: const BorderRadius.all(
//   //                       const Radius.circular(10.0),
//   //                     ),
//   //                   ),
//   //                   hintStyle: TextStyle(color: Colors.grey[800]),
//   //                 ),
//   //                 value: _KIT2,
//   //                 items: <String>[
//   //                   'Select Kitchen',
//   //                   '1',
//   //
//   //                 ].map((String value) {
//   //                   return new DropdownMenuItem<String>(
//   //                     value: value,
//   //                     child: new Text(value),
//   //                   );
//   //                 }).toList(),
//   //                 onChanged: (newVal) {
//   //                   setState(() {
//   //                     _KIT2 = newVal;
//   //                     print(_KIT2);
//   //                   });
//   //                 }),
//   //           ),
//   //         ),
//   //
//   //       ],
//   //     ),
//   //
//   //   );
//   //
//   // }
// }
