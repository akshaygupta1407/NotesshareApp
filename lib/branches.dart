import 'package:flutter/material.dart';
import 'addlinkFAB.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'CShyperlink.dart';

class CSroute extends StatefulWidget {
  @override
  _CSrouteState createState() => _CSrouteState();
}

class _CSrouteState extends State<CSroute> {
  String hyperl;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COE"),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('CSdata').snapshots(),
        builder: (_, snapshot) {
          if (snapshot.hasError) return Text('Error = ${snapshot.error}');
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            final docs = snapshot.data.docs;
            return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (_, i) {
                final data = docs[i].data();
                return ListTile(
                  title: Text(data['text']),
                  subtitle: Text(data['link']),

                  onTap: () async {
                     String url = data['link'];
                    await launch(url);
                  },
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CSlink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class ECEroute extends StatefulWidget {
  @override
  _ECErouteState createState() => _ECErouteState();
}

class _ECErouteState extends State<ECEroute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ECE"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ECElink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class ITroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IT"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ITlink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class ICEroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ICE"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ICElink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class MPAEroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MPAE"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MPAElink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class MEroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ME"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MElink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class MACroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAC"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MAClink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}

class BTroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BT"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BTlink()));
        },
        child: Icon(Icons.add),
        elevation: 16,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
