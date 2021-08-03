import 'package:flutter/material.dart';
import 'package:project2/verify.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'rounded_button.dart';
import 'constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
class Forgot extends StatefulWidget {

  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
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
                  "Reset Password",
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
                // SizedBox(
                //   height: 8.0,
                // ),
                // TextField(
                //   obscureText: true,
                //   textAlign: TextAlign.center,
                //   onChanged: (value) {
                //     //Do something with the user input.
                //     password = value;
                //   },
                //   decoration: kTextFieldDecoration.copyWith(
                //       hintText: 'Enter your new password'),
                // ),
                SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                    title: 'Reset Password',
                    colour: Colors.black54,
                    onPressed: (){
                          _auth.sendPasswordResetEmail(email: email);
                          //Navigator.of(context).pop();
                          showDialog(context: context,
                              builder: (context) => AlertDialog(
                                title: Text("A link has been sent to your email to reset your password."),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("OK"),
                                    onPressed: () => Navigator.pop(context, true),
                                  ),
                                ],
                              ),);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
