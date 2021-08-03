import 'package:project2/verify.dart';
import 'package:project2/verify1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'forgot.dart';
import 'rounded_button.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'Subjects.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool showspinner = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ModalProgressHUD(
          inAsyncCall: showspinner,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Login",
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
                SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                    title: 'Log In',
                    colour: Colors.black54,
                    onPressed: () async {
                      setState(() {
                        showspinner = false;
                      });
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: email, password: password);
                        if (user != null) {
                          SharedPreferences prefs =
                              await SharedPreferences.getInstance();
                          prefs.setString('email', email);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VerifyScreen1()));
                        }
                        showspinner = true;
                      } catch (e) {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: Text("Email or Password is Incorrect"),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text("OK"),
                                      onPressed: () =>
                                          Navigator.pop(context, false),
                                    ),
                                  ],
                                ));
                        setState(() {
                          showspinner = false;
                        });
                      }
                    }),

                InkWell(
                  child: Text("Forgot Password",textAlign: TextAlign.right,style: TextStyle(color: Colors.blue),),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Forgot()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
