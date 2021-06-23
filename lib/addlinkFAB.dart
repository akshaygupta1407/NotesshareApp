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
  final textController1 = TextEditingController();

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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('CSdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('ECEdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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

class ITlink extends StatefulWidget {
  @override
  _ITlinkState createState() => _ITlinkState();
}

class _ITlinkState extends State<ITlink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('ITdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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

class ICElink extends StatefulWidget {
  @override
  _ICElinkState createState() => _ICElinkState();
}

class _ICElinkState extends State<ICElink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('ICEdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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

class MPAElink extends StatefulWidget {
  @override
  _MPAElinkState createState() => _MPAElinkState();
}

class _MPAElinkState extends State<MPAElink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('MPAEdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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

class MElink extends StatefulWidget {
  @override
  _MElinkState createState() => _MElinkState();
}

class _MElinkState extends State<MElink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('MEdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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

class MAClink extends StatefulWidget {
  @override
  _MAClinkState createState() => _MAClinkState();
}

class _MAClinkState extends State<MAClink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('MACdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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

class BTlink extends StatefulWidget {
  @override
  _BTlinkState createState() => _BTlinkState();
}

class _BTlinkState extends State<BTlink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
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
              controller: textController1,
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (valuee) {
                NotesLink = valuee;
              }),
          SizedBox(
            height: 35,
            width: 10,
          ),
          ElevatedButton(
            onPressed: () {
              firestore
                  .collection('BTdata')
                  .add({'text': subname, 'link': NotesLink});
              Navigator.pop(context);
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
