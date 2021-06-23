import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CSlink extends StatefulWidget {
  @override
  _CSlinkState createState() => _CSlinkState();
}

class _CSlinkState extends State<CSlink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 45,
            width: 10,
          ),
          Text(
            'Category',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 45,
            width: 10,
          ),
          TextField(
              controller: textController,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) {
                subname = value;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          Text(
            'Add URL',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 35,
            width: 10,
          ),
          TextField(
              controller: textController,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (value) {}),
          SizedBox(
            height: 35,
            width: 10,
          ),

          ElevatedButton(
            onPressed: () {
              firestore.collection('CSdata').add({'text': subname});
            },
            child: const Text('Upload'),
          ),
          // add some space
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class ECElink extends StatefulWidget {
  @override
  _ECElinkState createState() => _ECElinkState();
}

class _ECElinkState extends State<ECElink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Row(),
    );
  }
}

class ITlink extends StatefulWidget {
  @override
  _ITlinkState createState() => _ITlinkState();
}

class _ITlinkState extends State<ITlink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Row(),
    );
  }
}

class ICElink extends StatefulWidget {
  @override
  _ICElinkState createState() => _ICElinkState();
}

class _ICElinkState extends State<ICElink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Row(),
    );
  }
}

class MPAElink extends StatefulWidget {
  @override
  _MPAElinkState createState() => _MPAElinkState();
}

class _MPAElinkState extends State<MPAElink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Row(),
    );
  }
}

class MElink extends StatefulWidget {
  @override
  _MElinkState createState() => _MElinkState();
}

class _MElinkState extends State<MElink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Row(),
    );
  }
}

class MAClink extends StatefulWidget {
  @override
  _MAClinkState createState() => _MAClinkState();
}

class _MAClinkState extends State<MAClink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Row(),
    );
  }
}

class BTlink extends StatefulWidget {
  @override
  _BTlinkState createState() => _BTlinkState();
}

class _BTlinkState extends State<BTlink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Upload"),
      ),
      body: Row(),
    );
  }
}
