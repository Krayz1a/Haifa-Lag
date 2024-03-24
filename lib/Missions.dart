import 'package:flutter/material.dart';


class Missions extends StatelessWidget {
  Missions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/setlocation');
                },
                child: Text(
                  'Press here for free candy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/map');
                },
                child: Text(
                  'Access Map',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/setreminder');
                },
                child: Text(
                  'Set A Reminder',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
      ),
    );
  }
}
