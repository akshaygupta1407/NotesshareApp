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
  }

  Future<void> _signOut(BuildContext context) async {
    await _firebaseAuth.signOut().then((_) {
      Navigator.of(context).popUntil((route) => route.isFirst);
      //Navigator.pop();
      Navigator.push(context,
          new MaterialPageRoute(builder: (context) => new welcomepage()));
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
              IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    prefs.remove('email');
                    _signOut(context);
                  })
            ],
          ),
          backgroundColor: Colors.grey.shade300,
          body: ListView(children: <Widget>[
            Card(
              elevation: 6,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/coe.jpg'),
                  // backgroundImage:
                  // NetworkImage(
                  //     "https://cdn.dribbble.com/users/1787323/screenshots/11310814/media/78d925f388bdfd914f5c84a30261e239.png?compress=1&resize=400x300"),
                   radius: 30,
                ),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/ece.jpg'),
                  //NetworkImage(
                    //  "https://www.nicepng.com/png/detail/261-2611775_automotive-electronics-electronics-and-telecommunication-engineering-logo.png"),
                  radius: 30,
                ),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/it.jpg'),
                  // backgroundImage: NetworkImage(
                  //     "https://www.pinclipart.com/picdir/middle/361-3610055_technology-icon-logo-icon-information-technology-clipart.png"),
                  radius: 30,
                ),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/ice.jpg'),
                  // backgroundImage: NetworkImage(
                  //     "https://www.logolynx.com/images/logolynx/s_c6/c6e0afa692ea5e6c715dbe8d82536b6b.jpeg"),
                  radius: 30,
                ),
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
                //dense: true,
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/mpae.jpg'),
                  // backgroundImage: NetworkImage(
                  //     "https://erpblog.iqms.com/wp-content/uploads/2019/05/manufacturing-process-automation-600x400.jpg"),
                  radius: 30,
                ),

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
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/me.jpg'),
                  // backgroundImage: NetworkImage(
                  //     "https://www.graphicsprings.com/filestorage/stencils/bd38c38cdeb5a255c36859e06ecacb7e.png?width=500&height=500"),
                  radius: 30,
                ),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/mac.jpg'),
                  // backgroundImage: NetworkImage(
                  //     "https://i.dlpng.com/static/png/6853626_preview.png"),
                  radius: 30,
                ),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/bt.jpg'),
                  // backgroundImage: NetworkImage(
                  //     "https://miro.medium.com/max/1838/0*4wMrvjNRA9kcVvks"),
                  radius: 30,
                ),
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
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/others.jpg'),
                  // backgroundImage: NetworkImage(
                  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu83HrqEKxSrN_iEs5pV6GCZ89lTxPPpVnlw&usqp=CAU",
                  // ),
                  radius: 30,
                ),
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
