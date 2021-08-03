import 'package:flutter/material.dart';
import 'addlinkFAB.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:url_launcher/url_launcher.dart';

class CSroute extends StatefulWidget {
  @override
  _CSrouteState createState() => _CSrouteState();
}

class _CSrouteState extends State<CSroute> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("COE"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('CSdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder:(_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                     // elevation: 2,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      shadowColor: Colors.blueGrey,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          // subtitle: Text('hello'),
                          //subtitle: Text(data['link']),
//
                          onTap: () async {
                             String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CSlink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("ECE"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('ECEdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          //subtitle: Text(data['link']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ECElink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class ITroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("IT"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('ITdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          //subtitle: Text(data['link']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ITlink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class ICEroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("ICE"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('ICEdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          //subtitle: Text(data['link']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ICElink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class MPAEroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("MPAE"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('MPAEdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          //subtitle: Text(data['link']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MPAElink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class MEroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("ME"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('MEdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          //subtitle: Text(data['link']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MElink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class MACroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("MAC"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('MACdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          //subtitle: Text(data['link']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MAClink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class BTroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("BT"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('BTdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BTlink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}

class OTHERSroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text("OTHERS"),
          backgroundColor: Colors.black,
        ),
        body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('OTHERSdata').orderBy("text",descending: false).snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) return Text('Error = ${snapshot.error}');
            if (!snapshot.hasData) {
              return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
            }
            if (snapshot.hasData) {
              final docs = snapshot.data.docs;
              return ListView.builder(
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListTile(
                          title: Text(data['text'],style: TextStyle(fontWeight: FontWeight.w500),),
                          subtitle: Text('Uploaded by: ' + data['name']),
                          //subtitle: Text(data['link']),

                          onTap: () async {
                            String url = data['link'];
                            await launch(url);
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return LinearProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),backgroundColor: Colors.white,);
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OTHERSlink()));
          },
          child: Icon(Icons.add),
          elevation: 16,
          backgroundColor: Colors.black54,
        ),
      ),
    );
  }
}
