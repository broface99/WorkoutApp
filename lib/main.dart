// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workoutapp/Routes/route_generator.dart';
import 'package:workoutapp/Pages/enrollment_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute, 
      home: EnrollmentScreen(),

    );
  }
}
