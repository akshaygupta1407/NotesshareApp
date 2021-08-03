import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constants.dart';
import 'package:firebase_core/firebase_core.dart';

class CSlink extends StatefulWidget {
  @override
  _CSlinkState createState() => _CSlinkState();
}

class _CSlinkState extends State<CSlink> {
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;
  String subname;
  final textController = TextEditingController();
  final textController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(

                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),

              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                  //color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                            TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                            Navigator.of(context).pop();
                            },),
                              ],
                            );
                          });
                    }
                    else {
                      String s = email.substring(0, email.indexOf('@'));
                      firestore.collection('CSdata').add({
                        'text': subname,
                        'link': NotesLink,
                        'email': email,
                        'name': s
                      });
                    }
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white,),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 20),

            ],
          ),
        ),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child
                    : FlatButton.icon(
                  shape: StadiumBorder(),
                 // color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else {
                      String s = email.substring(0, email.indexOf('@'));
                      firestore.collection('ECEdata').add({
                        'text': subname,
                        'link': NotesLink,
                        'email': email,
                        'name': s
                      });
                    }
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                  //color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else {
                      String s = email.substring(0, email.indexOf('@'));
                      firestore.collection('ITdata').add({
                        'text': subname,
                        'link': NotesLink,
                        'email': email,
                        'name': s
                      });
                    }
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),

        resizeToAvoidBottomInset: false,

        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                  //color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else
                      {
                    String s = email.substring(0, email.indexOf('@'));
                    firestore.collection('ICEdata').add({
                      'text': subname,
                      'link': NotesLink,
                      'email': email,
                      'name': s
                    });}
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,

        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                  //color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else
                      {
                    String s = email.substring(0, email.indexOf('@'));
                    firestore.collection('MPAEdata').add({
                      'text': subname,
                      'link': NotesLink,
                      'email': email,
                      'name': s
                    });}
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                 // color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else
                      {
                    String s = email.substring(0, email.indexOf('@'));
                    firestore.collection('MEdata').add({
                      'text': subname,
                      'link': NotesLink,
                      'email': email,
                      'name': s
                    });}
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                  //color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else
                      {
                    String s = email.substring(0, email.indexOf('@'));
                    firestore.collection('MACdata').add({
                      'text': subname,
                      'link': NotesLink,
                      'email': email,
                      'name': s
                    });}
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                 // color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else
                      {
                    String s = email.substring(0, email.indexOf('@'));
                    firestore.collection('BTdata').add({
                      'text': subname,
                      'link': NotesLink,
                      'email': email,
                      'name': s
                    });}
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class OTHERSlink extends StatefulWidget {
  @override
  _OTHERSlinkState createState() => _OTHERSlinkState();
}

class _OTHERSlinkState extends State<OTHERSlink> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String NotesLink;

  String subname;

  final textController = TextEditingController();
  final textController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Upload"),
          backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,


        body: SingleChildScrollView(
          child: Column(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'TITLE'),
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      subname = value;
                    }),
              ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: textController1,
                    decoration: kTextFieldDecoration.copyWith(hintText: 'URL'),
                    textAlign: TextAlign.center,
                    onChanged: (valuee) {
                      NotesLink = valuee;
                    }),
              ),
              SizedBox(
                height: 35,
                width: 10,
              ),
              Card(
                color: Colors.black54,
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: FlatButton.icon(
                  shape: StadiumBorder(),
                  //color: Colors.black54,
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    var email = prefs.getString('email');
                    if (subname == null || NotesLink == null) {
                      return showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Text Field can't be empty"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },),
                              ],
                            );
                          });
                    }
                    else
                      {
                    String s = email.substring(0, email.indexOf('@'));
                    firestore.collection('OTHERSdata').add({
                      'text': subname,
                      'link': NotesLink,
                      'email': email,
                      'name': s
                    });}
                    Navigator.pop(context);
                  },
                  label: Text("Upload",style: TextStyle(color: Colors.white),),
                  icon: Icon(Icons.upload_rounded,color: Colors.white,),
                  // child: const Text(
                  //   'Upload',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                ),
              ),
              // add some space
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
