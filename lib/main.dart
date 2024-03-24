import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'TeamSelect.dart';
import 'Missions.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.getString('uuid') == null){
    String uuid = UniqueKey().toString();
    prefs.setString('uuid', uuid);
  }

  print(prefs.get('uuid'));
  print(prefs.get('uuid'));
  print(prefs.get('uuid'));

  runApp(MaterialApp(
    title: 'yes',
    initialRoute: prefs.contains("Group") ?? '/hub' : '/Welcome',
    routes: {
      '/TeamSelect': (context) => TeamSelect(),
      '/missions': (context) => Missions(),
      '/hub': (context) => Hub(),
      '/welcome': (context) => Welcome(),
    },
  ));
}
