import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homedesignapp/Screens/LoginPage.dart';

import '../global.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  navigate() async {
    await Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => Login()));
    });
  }

  initi() async {
    Timer(
      Duration(seconds: 2),
      () {
        navigate();
      },
    );
  }

  @override
  void initState() {
    initi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/home.jpg'),
            ],
          ),
        ),
      ),
    ));
  }
}
