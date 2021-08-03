import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project2/Subjects.dart';

class VerifyScreen extends StatefulWidget {

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final auth = FirebaseAuth.instance;
  User user;
  Timer timer;


  @override
  void initState() {
   user = auth.currentUser;
    user.sendEmailVerification();
    
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
        checkEmailVerified();
    });
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:
      //Center(child: Text('An email has been sent to ${user.email} please verify!'),),
      AlertDialog(
        title : Text('An email has been sent to ${user.email} please verify!'),
        backgroundColor: Colors.lightBlue.shade50,
      )
    );
  }
  Future<void> checkEmailVerified()async{
    user = auth.currentUser;
    await user.reload();
    if(user.emailVerified)
      {
        timer.cancel();
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Notes()));
      }
  }
}
