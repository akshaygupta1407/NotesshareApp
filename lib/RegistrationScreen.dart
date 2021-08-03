import 'package:firebase_core/firebase_core.dart';
import 'package:project2/verify.dart';
import 'Subjects.dart';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showSpinner = false;
  //User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Register",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    email = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your email id'),
                ),
                SizedBox(
                  height: 8.0,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  decoration: kTextFieldDecoration.copyWith(
                      hintText: 'Enter your password'),
                ),
                // SizedBox(
                //   height: 15.0,
                // ),
                Center(child: Text("Note: Enter minimum 6 digit password!")),
                SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                    title: 'Register',
                    colour: Colors.black,
                    onPressed: () async {
                      setState(() {
                        showSpinner = false;
                        if(password.length <6)
                          {
                            print("Error");
                          }
                      });
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: email, password: password);
                        if (newUser != null) {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setString('email', email);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => VerifyScreen()));
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                        if(password.length <6)
                          {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(

                                  title: Text("Length of Password is less than 6! "),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("OK"),
                                      onPressed: () =>
                                          Navigator.pop(context, true),
                                    ),
                                  ],
                                ));
                          }
                        else {
                          showDialog(
                              context: context,
                              builder: (context) =>
                                  AlertDialog(

                                    title: Text(
                                        "This Email is already registered!"),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text("OK"),
                                        onPressed: () =>
                                            Navigator.pop(context, true),
                                      ),
                                    ],
                                  ));
                        }
                      }
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
