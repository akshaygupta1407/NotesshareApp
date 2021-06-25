import 'package:flutter/material.dart';
import 'rounded_button.dart';
import 'package:project2/RegistrationScreen.dart';
import 'login_screen.dart';
class welcomepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
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
            RoundedButton(title: 'Log In',colour: Colors.lightBlueAccent,onPressed: (){
             // Navigator.pushNamed(context, LoginScreen.id);
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },),
            RoundedButton(title: 'Register',colour: Colors.blueAccent,onPressed: (){
              //Navigator.pushNamed(context, RegistrationScreen.id);
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()));
            },),
          ],
        ),
      ),
    );
  }
}
