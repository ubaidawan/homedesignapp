import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homedesignapp/Screens/Milestone.dart';

class Inventory {
  String Material;

  String QualityA;

  String QualityB;

  String QualityC;

  String Quantity;

  String Price;

  int Count;

  Inventory({
     this.Material,
     this.QualityA,
     this.QualityB,
     this.QualityC,
     this.Quantity,
     this.Price,
     this.Count,
  });
}

List<Inventory> InventoryList = [
  Inventory(
    Material: 'Cement ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',

    Price: '1,000',
    Count: 0, Quantity: '1',
  ),
  Inventory(
    Material: 'Steel ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Price: '1,000',
    Count: 0, Quantity: '1',
  ),
  Inventory(
    Material: 'Sand ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Price: '1,000',
    Count: 0, Quantity: '1',
  ),
  Inventory(
    Material: 'Timber ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Price: '1,000',
    Count: 0, Quantity: '1',
  ),
  Inventory(
    Material: 'Bricks ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    Price: '1,000',
    Count: 0,
  ),
  Inventory(
    Material: 'Wood ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    Price: '1,000',
    Count: 0,
  ),
  Inventory(
    Material: 'Metal ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    Price: '1,000',
    Count: 0,
  ),
  Inventory(
    Material: 'Stone ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    Price: '1,000',
    Count: 0,
  ),
  Inventory(
    Material: 'Aluminium ',
    QualityA: 'A',
    QualityB: 'B',
    QualityC: 'C',
    Quantity: '20',
    Price: '1,000',
    Count: 0,
  ),
];
