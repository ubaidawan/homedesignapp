import 'dart:core';
import 'package:firebase_database/firebase_database.dart';
import 'package:homedesignapp/Model/CommercialDataModel.dart';
import 'package:homedesignapp/Model/CommercialRequestModelData.dart';
import 'package:homedesignapp/Model/ResidentRequestModelData.dart';
import 'package:homedesignapp/Model/ResidentialDataModel.dart';

import '120/120Model.dart';
import 'Model/ResidentialModel.dart';
import 'Model/ResidentialQuotationDataModel.dart';
int room,bathroom,floor,kitchen,hall;
String imagee;
// class Selected_List {
//   var Selected_SQyard;
//   var Selected_type = "A Catagory";
//   var Selected_Design = "Design 1";
//   var Selected_Cost = "700,000";
//
//   String Selected_Rooms;
//   String Selected_Bathroom;
//   String Selected_Kitchen;
//   String Selected_Hall;
//   String Selected_Roof;
//
//   Selected_List(
//       this.Selected_SQyard,
//       this.Selected_type,
//       this.Selected_Design,
//       this.Selected_Cost,
//       this.Selected_Rooms,
//       this.Selected_Bathroom,
//       this.Selected_Kitchen,
//       this.Selected_Hall,
//       this.Selected_Roof);
// }
bool request_status =true;
List<ResidentialQuotationDataModel> residentialquotationlist = [];
List<String> uidlist = [];
List<String> requestlist =[];

List<ResidentialDataModel> residentialmodellist = [];
List<CommercialDataModel> commercialmodellist = [];
List<ResidentialModel> residentialrequestmodellist =[];
List<CommercialRequestModelData> commercialrequestmodellist =[];
///120SQyard
List<ModeOneTwenty> SQyard_OneTwenty = [];
///
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
        commercialmodellist.add(CommercialDataModel(value.snapshot.key,
            value.snapshot.child("cost").value.toString(),
            value.snapshot.child("image").value.toString(),
            value.snapshot.child("sqfeet").value.toString(),
            value.snapshot.child("type").value.toString()
        ));
      }
    });
  }
}


Future<void> fetchRequestUid(String currentUserId) async {
  requestlist.clear();
  residentialrequestmodellist.clear();
  commercialrequestmodellist .clear();
  residentialquotationlist.clear();
  DatabaseReference DB_Refrance =
  await FirebaseDatabase.instance.reference().child("Requests");
  DB_Refrance.once().then((value) {
    Map<dynamic, dynamic> values = value.snapshot.value;
    Iterable childkey2 = values.keys;
    childkey2.forEach((element) {
      requestlist.add(element);
    });
  }).then((value) async {
    await fetchRequestDetails(currentUserId);

  });
}
int pos;
double percent=0;
fetchRequestDetails(String userId) async {
  for (int i = 0; i < requestlist.length; i++) {
    int len = requestlist.length;
    DatabaseReference reference =  FirebaseDatabase.instance
        .reference()
        .child("Requests")
        .child(requestlist.elementAt(i));
    reference.once().then((value) {
      if (value.snapshot.child("cid").value.toString() == userId ) {
        String typee = value.snapshot.child("type").value.toString();
        if (typee == "Residential") {
          residentialrequestmodellist.add(ResidentialModel(
              requestlist.elementAt(i),
              value.snapshot.child("aluminium").value.toString(),
              value.snapshot.child("bathroom").value.toString(),
              value.snapshot.child("brick").value.toString(),
              value.snapshot.child("cement").value.toString(),
              value.snapshot.child("cid").value.toString(),
              value.snapshot.child("floor").value.toString(),
              value.snapshot.child("hall").value.toString(),
              value.snapshot.child("image1").value.toString(),
            value.snapshot.child("image2").value.toString(),
              value.snapshot.child("kitchen").value.toString(),
              value.snapshot.child("room").value.toString(),
              value.snapshot.child("sand").value.toString(),
              value.snapshot.child("sqyard").value.toString(),
              value.snapshot.child("status").value.toString(),
              value.snapshot.child("steel").value.toString(),
              value.snapshot.child("stone").value.toString(),
              value.snapshot.child("type").value.toString(),
              value.snapshot.child("wood").value.toString(),
          ));
          if(value.snapshot.child("status").value.toString() == "accept"){
            request_status = true;
            residentialquotationlist.add(ResidentialQuotationDataModel(
                value.snapshot.key,
                value.snapshot.child("type").value.toString(),
                value.snapshot.child("sqyard").value.toString(),
                value.snapshot.child("totalroom").value.toString(),
                value.snapshot.child("roomcost").value.toString(),
                value.snapshot.child("totalbathroom").value.toString(),
                value.snapshot.child("bathroomcost").value.toString(),
                value.snapshot.child("totalkitchen").value.toString(),
                value.snapshot.child("kitchencost").value.toString(),
                value.snapshot.child("totalhall").value.toString(),
                value.snapshot.child("hallcost").value.toString(),
                value.snapshot.child("totalfloor").value.toString(),
                value.snapshot.child("floorcost").value.toString(),
                value.snapshot.child("constructioncost").value.toString(),
                value.snapshot.child("labourcost").value.toString(),
                value.snapshot.child("machinerycost").value.toString(),
                value.snapshot.child("status").value.toString(),
                value.snapshot.child("progress").value.toString()));
          }
          else{
            request_status = false;
            residentialquotationlist.add(ResidentialQuotationDataModel(
                "null","null","null","null","null","null","null","null","null","null","null",
                "null","null","null","null","null","null" , "null"));
          }
        } else  {
          commercialrequestmodellist.add(CommercialRequestModelData
            ( requestlist.elementAt(i),
              value.snapshot.child("cid").value.toString(),
              value.snapshot.child("cost").value.toString(),
              value.snapshot.child("image").value.toString(),
              value.snapshot.child("sqfeet").value.toString(),
              value.snapshot.child("status").value.toString(),
            value.snapshot.child("type").value.toString()
          ));
        }
      }

    });
  }
}
  fetchCommercial(String userId) async {
  commercialrequestmodellist.clear();
    for (int i = 0; i < requestlist.length; i++) {
      DatabaseReference reference = await FirebaseDatabase.instance
          .reference()
          .child("Requests")
          .child(requestlist.elementAt(i));
      reference.once().then((value) {
        if(value.snapshot.child('sqfeet').exists){
          if (value.snapshot.child("cid").value.toString() == userId &&
              value.snapshot.child("status").value.toString() == "accept") {
            commercialrequestmodellist.add(CommercialRequestModelData
              (
                requestlist.elementAt(i),
                value.snapshot
                    .child("cid")
                    .value
                    .toString(),
                value.snapshot
                    .child("cost")
                    .value
                    .toString(),
                value.snapshot
                    .child("image")
                    .value
                    .toString(),
                value.snapshot
                    .child("sqfeet")
                    .value
                    .toString(),
                value.snapshot
                    .child("status")
                    .value
                    .toString(),
                value.snapshot
                    .child("type")
                    .value
                    .toString()
            ));
          }
        }
      });
    }
  }

