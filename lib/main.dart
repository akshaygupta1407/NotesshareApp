import 'package:firebase_core/firebase_core.dart';
import 'package:project2/Subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'Welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
Future<void> main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,home: email==null ? welcomepage() : Notes()));
}
