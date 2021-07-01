import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'rounded_button.dart';
import 'package:project2/RegistrationScreen.dart';
import 'login_screen.dart';
class welcomepage extends StatefulWidget {


  @override
  _welcomepageState createState() => _welcomepageState();
}

class _welcomepageState extends State<welcomepage> {
  Future<bool> _onBackPressed() {
    return SystemNavigator.pop();
    // return showDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       title: Text("Do you really want to exit?"),
    //       actions: <Widget>[
    //         FlatButton(
    //           child: Text("No"),
    //           onPressed: () => Navigator.pop(context, false),
    //         ),
    //         FlatButton(
    //             child: Text("Yes"),
    //             onPressed: () {
    //               //Navigator.pop(context, true);
    //               SystemNavigator.pop();
    //             }),
    //       ],
    //     ));
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   title: Text("Welcome"),
          // ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "      NotesApp",style: TextStyle(
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
                RoundedButton(title: 'Log In',colour: Colors.black54,onPressed: (){
                 // Navigator.pushNamed(context, LoginScreen.id);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },),
                RoundedButton(title: 'Register',colour: Colors.black,onPressed: (){
                  //Navigator.pushNamed(context, RegistrationScreen.id);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
