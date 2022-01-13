import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:homedesignapp/Screens/HomeNav.dart';
import 'package:homedesignapp/Screens/HomeScreen.dart';
import 'package:homedesignapp/Screens/Signup.dart';
import 'package:homedesignapp/Widgets/Header.dart';

import '../global.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  bool _obscureText = true;
   String email, password;
   TextEditingController _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  login() async {
    fetchResidentialUid();
    try {
      email = _email.text;
      password = _password.text;
      final FirebaseAuth auth = FirebaseAuth.instance;
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        String val = value.user.uid;
        if (val.isNotEmpty) {
          print('Its Working');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomNav()));
        } else {
          print('not showing anything');
          // ScaffoldMessenger.of(context)
          //     .showSnackBar(SnackBar(content: Text('Something went wrongs')));
          //
        }
      });
    } catch (e) {
      print('kkkkkkkk');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Something Went Wrong')));
      // final snackBar = SnackBar(content: Text(e.toString()));
      //
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);

    }
  }

  void initState() {
    _email = new TextEditingController();
    _password = new TextEditingController();
    _obscureText = !_obscureText;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Header('Login'),
                    Padding(padding: const EdgeInsets.all(50.0)),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _email,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                              ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.black),
                              // border: InputBorder.none),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(25.0)),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(),
                          child: TextFormField(
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            controller: _password,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _obscureText ? Icons.visibility : Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  }),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.black, width: 2),
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.black),

                              // border: InputBorder.none),
                            ),
                            obscureText: _obscureText,
                          ),
                        )
                      ],
                    ),
                    Padding(padding: const EdgeInsets.all(40.0)),
                    InkWell(
                      onTap: () {
                        login();
                      },
                      child: Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Colors.cyan[500],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: Text(
                          'Create Account?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
