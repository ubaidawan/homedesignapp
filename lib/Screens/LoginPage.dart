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
          fetchRequestUid(val);
          print('Its Working');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomNavbar()));
        } else {
          print('not showing anything');
        }
      });
    } catch (e) {
      print('kkkkkkkk');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Something Went Wrong')));
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
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Header('Login'),
                  Padding(padding: const EdgeInsets.all(30.0)),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          controller: _email,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.cyan, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.black26),
                          ),
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(25.0)),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          controller: _password,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                color: Colors.black,
                                icon: Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                }),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.cyan, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.black26),
                          ),
                          obscureText: !_obscureText,
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
                      height: 40,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        color: Colors.cyan[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Container(
                        height: 40,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.cyan[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Create Account?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
