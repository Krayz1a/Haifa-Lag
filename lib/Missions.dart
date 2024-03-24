import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class enum Difficuly {Easy, Medium, Hard};

class Mission{
  late Difficuly _difficuly;
  late String _name;

  Mission(String name, Difficuly difficuly):
    difficuly(difficuly);
    name(name)
  {}
};

