import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String dropdownvalue = 'Group A';
  var items = [
    'Group A',
    'Group B',
    'Group C',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[600],
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child:
                      DropdownButton(
                        isExpanded: false,
                        value: dropdownvalue,
                        icon: const Icon(Icons.arrow_downward),
                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items, style: const TextStyle(fontSize: 25),),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                  ),
                SizedBox(height: 20.0,),
                ElevatedButton(
                  onPressed: () async{
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    final path = FirebaseFirestore.instance.collection('Groups').doc(dropdownvalue);
                    path.set({prefs.getString('uuid').toString(): prefs.getString('uuid')});
                    prefs.setString('Group', dropdownvalue);
                    prefs.setString('path', path.toString());
                  },
                  child: Text('Continue', style: TextStyle(color: Colors.black),),
                ),
              ]
          )
        )
    );
  }
}
