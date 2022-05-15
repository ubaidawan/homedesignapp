import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class profilee extends StatefulWidget {
  const profilee({Key key}) : super(key: key);

  @override
  _profileeState createState() => _profileeState();
}

class _profileeState extends State<profilee> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //File _image;
  String imageUrl, developername, email, phoneNo, address;
  final FocusNode myFocusNode = FocusNode();

  Future<void> fetchDetails() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    DatabaseReference reference = await FirebaseDatabase.instance
        .ref("UserClient")
        .child(auth.currentUser.uid);
    reference.once().then((value) {
      if (value.snapshot.child("email").exists) {
        email = value.snapshot.child("email").value.toString();
        print(email);
      }
      if (value.snapshot.child("Username").exists) {
        developername = value.snapshot.child("Username").value.toString();
        print(developername);
      }
      if (value.snapshot.child("contact").exists) {
        phoneNo = value.snapshot.child("contact").value.toString();
        print(phoneNo);
      }
      if (value.snapshot.child("profileimage").exists) {
        imageUrl = value.snapshot.child("profileimage").value.toString();
      }
      if (value.snapshot.child("address").exists) {
        address = value.snapshot.child("address").value.toString();
        print(address);
      }
    });
  }

  bool _loading = true;
  @override
  void initState() {
    // TODO: implement initState
    fetchDetails();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _loading = false;
      });
    });
    super.initState();
  }

  Future<void> _signOut() async {
    await _auth.signOut();
    SystemNavigator.pop();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _signOut();
            },
            icon: Icon(Icons.power_settings_new),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      body: _loading
          ? Center(
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      //   color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: CircularProgressIndicator()))
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 35,
                          letterSpacing: 1.5,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      //   padding: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width / 2,
                      height: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 5),
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imageUrl ?? 'assets/profile.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: CircleAvatar(
                        backgroundColor: Colors.cyan,
                        child: IconButton(
                          icon: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Container(
                      // height: 450,
                      width: double.infinity,
                      //margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: developername,
                                hintStyle: TextStyle(
                                  letterSpacing: 2,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: Colors.white30,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: email,
                                hintStyle: TextStyle(
                                  letterSpacing: 2,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: Colors.white30,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: phoneNo,
                                hintStyle: TextStyle(
                                  letterSpacing: 2,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: Colors.white30,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none)),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: address,
                                hintStyle: TextStyle(
                                  letterSpacing: 2,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                                fillColor: Colors.white30,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none)),
                          ),
                          Container(
                            height: 55,
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.cyan,
                              child: Center(
                                child: Text(
                                  "Update",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
