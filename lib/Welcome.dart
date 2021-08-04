import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project2/Subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'rounded_button.dart';
final GoogleSignIn googleSignIn = GoogleSignIn();
class welcomepage extends StatefulWidget {


  @override
  _welcomepageState createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  Future<bool> _onBackPressed() {
    return SystemNavigator.pop();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "NotezEzzy",style: TextStyle(
                      fontSize: 45.0,
                         fontWeight: FontWeight.w900,
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 48.0,
                ),

                RoundedButton(title: 'Sign In With Google',colour: Colors.black,onPressed: ()
                {

                  signInWithGoogle().then((value)async{
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Notes()));
                    final user = FirebaseAuth.instance.currentUser;
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.setString('email', user.email);
                  });
                  //return
                  //Navigator.pushNamed(context, RegistrationScreen.id);
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                  //   return isAuth ? Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => Notes())) : welcomepage();
                  //print(isAuth);
                  // final user = FirebaseAuth.instance.currentUser;
                  // print(user.displayName);
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Future<UserCredential> signInWithGoogle()async{
  final GoogleSignInAccount googleuser = await GoogleSignIn().signIn();
  final GoogleSignInAuthentication googleAuth = await googleuser.authentication;
  final GoogleAuthCredential credential = GoogleAuthProvider.credential(
    idToken: googleAuth.idToken,
    accessToken: googleAuth.accessToken
  );
  // SharedPreferences prefs =
  // await SharedPreferences.getInstance();
  // prefs.setString('email', user.email);
  // print('.............................................................................................'+user.email);
//
return await FirebaseAuth.instance.signInWithCredential(credential);
}