import 'package:flutter/material.dart';
import 'package:homedesignapp/180yardnew.dart';
import 'package:homedesignapp/240yardnew.dart';
import 'package:homedesignapp/300yardnew.dart';
import 'package:homedesignapp/Screens/120sqyard.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:homedesignapp/Screens/Detail_Selected.dart';
import 'package:homedesignapp/Screens/Feedback.dart';
import 'package:homedesignapp/Screens/Splash.dart';

import '120yardnew.dart';
import 'Screens/Inventory.dart';
import 'Screens/SelectSqyard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),

        home: Splashscreen(),
      // home : ReachUs(),
      //   home :SelectSqyard(),
      //  home: twenty(),
      // home: Oneeighty(),
      // home : Twoforty(),
      // home : Threehundred(),
      // home :Inventoryy(),
     // home: Detail_Selected(),
    );
  }
}
