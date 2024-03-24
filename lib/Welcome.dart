import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {


  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[600],
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  controller: myController,
                ),
                SizedBox(height: 20.0,),
                Row(
                  children[
                    ElevatedButton(
                      child: Text('Continue', style: TextStyle(color: Colors.black),),
                      onPressed: () async{
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        final path = FirebaseFirestore.instance.collection('Groups').doc(dropdownvalue);
                        path.set({prefs.getString('uuid').toString(): prefs.getString('uuid')});
                        prefs.setString('Group', dropdownvalue);
                        prefs.setString('path', path.toString());
                        
                        Navigator.pushNamed(context, '/hub');
                      },
                    ),
                    ElevatedButton(
                      child: Text('Continue', style: TextStyle(color: Colors.black),),
                      onPressed: () async{
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        final path = FirebaseFirestore.instance.collection('Groups').doc(dropdownvalue);
                        path.set({prefs.getString('uuid').toString(): prefs.getString('uuid')});
                        prefs.setString('Group', dropdownvalue);
                        prefs.setString('path', path.toString());
                        
                        Navigator.pushNamed(context, '/hub');
                      },
                    ),

                  ],
                ),
              ],
          ),
        ),
    );
  }
}
