import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homedesignapp/Model/OneTwentyYardModel.dart';
import 'package:homedesignapp/Screens/Milestone.dart';

class Inventory {
 static List<String> ChangeVal=[];
  String Material;

  String QualityA;

  String QualityB;

  String QualityC;

  String Quantity;

  String PriceA;
  String PriceB;
  String PriceC;
  String Changevalue1;
  String Qualitytype;
  // String Changevalue2;
  // String Changevalue3;
  bool A;
  bool B;
  bool C;

  int Count;

  Inventory({
     this.Material,
     this.QualityA,
     this.QualityB,
     this.QualityC,
     this.Quantity,
     this.PriceA,
     this.PriceB,
     this.PriceC,
     this.Count,
     this.A,
     this.B,
     this.C,
    this.Changevalue1,
    this.Qualitytype
    // this.Changevalue2,
    // this.Changevalue3,
  });
}
List<Inventory> InventoryList = [
  Inventory(
    Material: 'Cement ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',

    PriceA: '2000',
    PriceB: '1500',
    PriceC: '1000',
    A :false,
    B :false,
    C :false,
    Changevalue1: "",
    Qualitytype:"",


    Count: 0, Quantity: '1',
  ),
  Inventory(
    Material: 'Steel ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    PriceA: '2000',
    PriceB: '1500',
    PriceC: '1000',
    A :false,
    B :false,
    C :false,
    Changevalue1: "",
    Qualitytype:"",
    Count: 0, Quantity: '1',
  ),
  Inventory(
    Material: 'Sand ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    PriceA: '2000',
    PriceB: '1500',
    PriceC: '1000',
    A :false,
    B :false,
    C :false,
    Changevalue1: "",
    Qualitytype:"",
    Count: 0, Quantity: '1',
  ),

  Inventory(
    Material: 'Bricks ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    PriceA: '2000',
    PriceB: '1500',
    PriceC: '1000',
    Changevalue1: "",
    Qualitytype:"",
    A :false,
    B :false,
    C :false,
    Count: 0,
  ),
  Inventory(
    Material: 'Wood ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    PriceA: '2000',
    PriceB: '1500',
    PriceC: '1200',
    Changevalue1:"" ,
    Qualitytype:"",
    A :false,
    B :false,
    C :false,
    Count: 0,
  ),

  Inventory(
    Material: 'Stone ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    PriceA: '1800',
    PriceB: '1400',
    PriceC: '1000',
    Changevalue1: "",
    Qualitytype:"",
    A :false,
    B :false,
    C :false,
    Count: 0,
  ),
  Inventory(
    Material: 'Aluminium',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    PriceA: '2500',
    PriceB: '1800',
    PriceC: '1000',
    Changevalue1: "",
    Qualitytype:"",
    A :false,
    B :false,
    C :false,
    Count: 0,
  ),
];
List<OneTwentyYardModel> oneTwentyYardmodellist = new List();
