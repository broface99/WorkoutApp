import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
    const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        backgroundColor: Color(0xFF3D64EB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
               onPressed: (){
                  Navigator.pushNamed(context, '/notification');
                },
                 child: Text('Notification'))
            ],
          ),
        ),
      ),
    );
  }
}