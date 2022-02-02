import 'package:flutter/material.dart';
import 'package:homedesignapp/List/Inventory_List.dart';
import 'package:homedesignapp/Screens/HomeNav.dart';
import 'package:homedesignapp/Screens/HomeScreen.dart';
import 'package:homedesignapp/Screens/Inventory.dart';
import 'package:homedesignapp/Screens/Milestone.dart';
import 'package:homedesignapp/Screens/Splash.dart';
import 'package:firebase_core/firebase_core.dart';

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
      // home: CommercialPage(),
      // home: Residential(),
        home: Splashscreen(),
      //home: HomeScreen(),
      //home: BottomNav(),
      //   home :Inventoryy(),
      // home: Milestone(),
      // home: Detail_Selected(),
    );
  }
}
