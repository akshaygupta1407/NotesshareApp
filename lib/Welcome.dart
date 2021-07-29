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
                // Container(
                //   child: Image(image: NetworkImage("https://i0.wp.com/blog.lulu.com/wp-content/uploads/2018/11/112718_GIFs-Blog.gif?fit=1000%2C550&ssl=1"),height: 50,width: 50,),
                // ),
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
