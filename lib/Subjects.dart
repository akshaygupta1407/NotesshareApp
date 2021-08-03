import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/Welcome.dart';
import 'package:project2/help.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'TC.dart';
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

  String email;
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
            // iconTheme: IconThemeData(color: Colors.black),
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Menu Icon',
            //   onPressed: () {
            //
            //   },
            // ), //IconButton

            title: Text(
              "Feed",
            ),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.logout),
                tooltip: 'Sign Out',
                onPressed: ()
                    //async
                    {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("Do you want to sign out?"),
                            actions: <Widget>[
                              FlatButton(
                                child: Text("NO"),
                                onPressed: () => Navigator.pop(context, true),
                              ),
                              FlatButton(
                                  child: Text("YES"),
                                  onPressed: () async {
                                    SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.remove('email');
                                    _signOut(context);
                                  }),
                            ],
                          ));

                  // SharedPreferences prefs =
                  //     await SharedPreferences.getInstance();
                  // prefs.remove('email');
                  // _signOut(context);
                },
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text(""),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage("assets/logo.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                ListTile(
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => help()));
                  },
                ),
                ListTile(
                  title: Text('Terms and Conditions'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => TC()));
                  },
                ),
              ],
            ),
          ),
          backgroundColor: Colors.grey.shade100,
          body: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                // color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/coe.jpg'),
                    // backgroundImage:
                    // NetworkImage(
                    //     "https://cdn.dribbble.com/users/1787323/screenshots/11310814/media/78d925f388bdfd914f5c84a30261e239.png?compress=1&resize=400x300"),
                    radius: 30,
                  ),
                  // tileColor: Colors.grey.shade100,
                  title: Text(
                    "COE",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CSroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                //  color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/ece.jpg'),
                    //NetworkImage(
                    //  "https://www.nicepng.com/png/detail/261-2611775_automotive-electronics-electronics-and-telecommunication-engineering-logo.png"),
                    radius: 30,
                  ),
                  //    tileColor: Colors.grey.shade100,
                  title: Text(
                    "ECE",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ECEroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                //  color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/it.jpg'),
                    // backgroundImage: NetworkImage(
                    //     "https://www.pinclipart.com/picdir/middle/361-3610055_technology-icon-logo-icon-information-technology-clipart.png"),
                    radius: 30,
                  ),
                  //  tileColor: Colors.grey.shade100,
                  title: Text(
                    "IT",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ITroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                // color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/ice.jpg'),
                    // backgroundImage: NetworkImage(
                    //     "https://www.logolynx.com/images/logolynx/s_c6/c6e0afa692ea5e6c715dbe8d82536b6b.jpeg"),
                    radius: 30,
                  ),
                  //    tileColor: Colors.grey.shade100,
                  title: Text(
                    "ICE",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ICEroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                //   color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  //dense: true,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/mpae.jpg'),
                    // backgroundImage: NetworkImage(
                    //     "https://erpblog.iqms.com/wp-content/uploads/2019/05/manufacturing-process-automation-600x400.jpg"),
                    radius: 30,
                  ),

                  //tileColor: Colors.grey.shade100,
                  title: Text(
                    "MPAE",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MPAEroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                //    color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/me.jpg'),
                    // backgroundImage: NetworkImage(
                    //     "https://www.graphicsprings.com/filestorage/stencils/bd38c38cdeb5a255c36859e06ecacb7e.png?width=500&height=500"),
                    radius: 30,
                  ),
                  //   tileColor: Colors.grey.shade100,
                  title: Text(
                    "ME",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MEroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                //    color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/mac.jpg'),
                    // backgroundImage: NetworkImage(
                    //     "https://i.dlpng.com/static/png/6853626_preview.png"),
                    radius: 30,
                  ),
                  //     tileColor: Colors.grey.shade100,
                  title: Text(
                    "MAC",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MACroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                //      color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/bt.jpg'),
                    // backgroundImage: NetworkImage(
                    //     "https://miro.medium.com/max/1838/0*4wMrvjNRA9kcVvks"),
                    radius: 30,
                  ),
                  //  tileColor: Colors.grey.shade100,
                  title: Text(
                    "BT",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BTroute()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                //   color: Colors.grey.shade100,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/others.jpg'),
                    // backgroundImage: NetworkImage(
                    //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu83HrqEKxSrN_iEs5pV6GCZ89lTxPPpVnlw&usqp=CAU",
                    // ),
                    radius: 30,
                  ),
                  //  tileColor: Colors.grey.shade100,
                  title: Text(
                    "OTHERS",
                    style: TextStyle(fontSize: 25),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OTHERSroute()));
                  },
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
