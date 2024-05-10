// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D64EB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 20,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  SizedBox(width: 80,),
                  Text('Notification',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF596ceb),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/workout1.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Hey, it\'s time for lunch',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'About 1 minute ago',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF596ceb),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/workout1.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Hey, it\'s time for lunch',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'About 1 minute ago',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF596ceb),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/workout1.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Hey, it\'s time for lunch',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'About 1 minute ago',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF596ceb),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/workout1.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Hey, it\'s time for lunch',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'About 1 minute ago',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(height: 20,),


            ],
          ),
        ),
      ),
    );
  }
}