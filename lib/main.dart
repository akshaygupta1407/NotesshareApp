import 'package:firebase_core/firebase_core.dart';

import 'branches.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProjectNotes());
}

class ProjectNotes extends StatefulWidget {
  @override
  _ProjectNotesState createState() => _ProjectNotesState();
}

class _ProjectNotesState extends State<ProjectNotes> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Notes(),
    );
  }
}

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
        ListTile(
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
        ListTile(
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
        ListTile(
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
        ListTile(
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
        ListTile(
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
        ListTile(
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
        ListTile(
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
      ]),
    );
  }
}
