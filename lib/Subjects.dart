import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/Welcome.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'branches.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<bool> _onBackPressed() {
    return SystemNavigator.pop();
      // showDialog(
      //   context: context,
      //   builder: (context) => AlertDialog(
      //         title: Text("Do you really want to exit?"),
      //         actions: <Widget>[
      //           FlatButton(
      //             child: Text("No"),
      //             onPressed: () => Navigator.pop(context, false),
      //           ),
      //           FlatButton(
      //               child: Text("Yes"),
      //               onPressed: () {
      //                 //Navigator.pop(context, true);
      //                 SystemNavigator.pop();
      //               }),
      //         ],
      //       ));
  }
Future<void> _signOut(BuildContext context) async
{
  await _firebaseAuth.signOut().then((_){
    Navigator.of(context).popUntil((route) => route.isFirst);
    //Navigator.pop();
    Navigator.push(context,new MaterialPageRoute(builder: (context)=> new welcomepage()));
  });
}
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Feed"),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.logout), onPressed: ()async{
                SharedPreferences prefs = await SharedPreferences.getInstance();
                prefs.remove('email');
                _signOut(context);
              })
            ],
          ),
          body: ListView(children: <Widget>[
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "COE",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CSroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "ECE",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ECEroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "IT",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ITroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "ICE",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ICEroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                dense: true,
                tileColor: Colors.grey.shade100,
                title: Text(
                  "MPAE",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MPAEroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "ME",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MEroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "MAC",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MACroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "BT",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BTroute()));
                },
              ),
            ),
            Card(
              elevation: 6,
              child: ListTile(
                tileColor: Colors.grey.shade100,
                title: Text(
                  "OTHERS",
                  style: TextStyle(fontSize: 25),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTHERSroute()));
                },
              ),
            ),
          ]),
        ),
      ),
    );

  }

}

