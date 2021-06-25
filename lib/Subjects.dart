import 'package:flutter/material.dart';
import 'branches.dart';
class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feed"),
      ),
      body: ListView(children: <Widget>[
        Card(
         elevation: 6,
          child:
      ListTile(
            tileColor: Colors.grey.shade100,
            title: Text(
              "COE",
              style: TextStyle(fontSize: 25),
            ),
            contentPadding:
            EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CSroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ECEroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ITroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ICEroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MPAEroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MEroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MACroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BTroute()));
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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OTHERSroute()));
            },
          ),
        ),
      ]),
    );
  }
}
