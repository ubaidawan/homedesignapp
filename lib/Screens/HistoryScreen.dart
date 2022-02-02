import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {


  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(child: Text("No Data Found !", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)),
    );
  }
}
