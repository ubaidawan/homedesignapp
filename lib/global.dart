import 'dart:core';
import 'package:firebase_database/firebase_database.dart';
import 'package:homedesignapp/Model/CommercialDataModel.dart';
import 'package:homedesignapp/Model/ResidentialDataModel.dart';

class Selected_List {
  var Selected_SQyard;
  var Selected_type = "A Catagory";
  var Selected_Design = "Design 1";
  var Selected_Cost = "700,000";

  String Selected_Rooms;
  String Selected_Bathroom;
  String Selected_Kitchen;
  String Selected_Hall;
  String Selected_Roof;

  Selected_List(
      this.Selected_SQyard,
      this.Selected_type,
      this.Selected_Design,
      this.Selected_Cost,
      this.Selected_Rooms,
      this.Selected_Bathroom,
      this.Selected_Kitchen,
      this.Selected_Hall,
      this.Selected_Roof);
}

List<String> uidlist = [];
List<ResidentialDataModel> residentialmodellist = [];
List<CommercialDataModel> commercialmodellist = [];

Future<void> fetchResidentialUid() async {
  uidlist.clear();
  residentialmodellist.clear();
  commercialmodellist.clear();
  DatabaseReference DB_Refrance =
      await FirebaseDatabase.instance.reference().child("plots");
  DB_Refrance.once().then((value) {
    Map<dynamic, dynamic> values = value.snapshot.value;
    Iterable childkey2 = values.keys;
    childkey2.forEach((element) {
      uidlist.add(element);
    });
  }).then((value) async {
    await fetchResidentialDetails();
  });
}

fetchResidentialDetails() {
  for (int i = 0; i < uidlist.length; i++) {
    DatabaseReference reference = FirebaseDatabase.instance
        .reference()
        .child("plots")
        .child(uidlist.elementAt(i));
    reference.once().then((value) {
      if (value.snapshot.child("type").value.toString() == "Residential") {
        residentialmodellist.add(ResidentialDataModel(
            value.snapshot.key,
            value.snapshot.child("aluminium").value.toString(),
            value.snapshot.child("bathroom").value.toString(),
            value.snapshot.child("brick").value.toString(),
            value.snapshot.child("cement").value.toString(),
            value.snapshot.child("cost").value.toString(),
            value.snapshot.child("floor").value.toString(),
            value.snapshot.child("hall").value.toString(),
            value.snapshot.child("image").value.toString(),
            value.snapshot.child("kitchen").value.toString(),
            value.snapshot.child("room").value.toString(),
            value.snapshot.child("sand").value.toString(),
            value.snapshot.child("sqyard").value.toString(),
            value.snapshot.child("steel").value.toString(),
            value.snapshot.child("stone").value.toString(),
            value.snapshot.child("timber").value.toString(),
            value.snapshot.child("type").value.toString()));
      } else if (value.snapshot.child("type").value.toString() == "Commercial") {
        commercialmodellist
            .add(CommercialDataModel(value.snapshot.key,
            value.snapshot.child("cost").value.toString(),
            value.snapshot.child("image").value.toString(),
            value.snapshot.child("sqfeet").value.toString(),
            value.snapshot.child("type").value.toString()
        ));
      }
    });
  }
}
