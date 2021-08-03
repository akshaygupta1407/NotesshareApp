import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project2/Subjects.dart';

class VerifyScreen1 extends StatefulWidget {
  @override
  _VerifyScreen1State createState() => _VerifyScreen1State();
}

class _VerifyScreen1State extends State<VerifyScreen1> {
  final auth = FirebaseAuth.instance;
  User user;
  Timer timer;
  String data;

  @override
  void initState() {
    user = auth.currentUser;
    //user.sendEmailVerification();

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      checkEmailVerified();
      callme();
    });
    super.initState();
  }

  callme() async {
    await Future.delayed(Duration(seconds: 2));
    checkEmailVerified().then((value) => {
      setState((){
        data = "5";
      },),
    },
    );
  }


  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: data == null ? Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.grey,
          ),
        ) : AlertDialog(
        title : Text('Email is not verified yet... Register your email again!'),
          actions: <Widget>[
            FlatButton(
              child: Text("OK"),
              onPressed: () {
                  Navigator.pop(context, false);
                  auth.currentUser.delete();
              },
            ),
          ],
      backgroundColor: Colors.lightBlue.shade50,
    ),
      ),

      // AlertDialog(
      //   title : Text('An email has been sent to ${user.email} please verify!'),
      //   backgroundColor: Colors.lightBlue.shade50,
      // )
    );
  }

  Future<void> checkEmailVerified() async {
    user = auth.currentUser;
    await user.reload();
    if (user.emailVerified) {
      timer.cancel();
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => Notes()));
    } else {
      AlertDialog(
        title: Text('Incorrect Email'),
        backgroundColor: Colors.lightBlue.shade50,
      );
    }
  }
}
