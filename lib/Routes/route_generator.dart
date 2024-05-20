// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:workoutapp/Pages/enrollment_page.dart';
import 'package:workoutapp/Pages/signup_page.dart';
import 'package:workoutapp/Pages/login_page.dart';
import 'package:workoutapp/Pages/home_page.dart';
import 'package:workoutapp/Pages/notification_page.dart';
import 'package:workoutapp/Pages/profile_page.dart';
import 'package:workoutapp/random_widgets/nav_bar.dart';
class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/enrollment':
        return MaterialPageRoute(builder: (_) => EnrollmentScreen());
      case '/signup':
          return MaterialPageRoute(builder: (_) => SignupScreen());
      case '/home':
          return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/notification':
          return MaterialPageRoute(builder: (_) => NotificationScreen());
      case '/profile':
          return MaterialPageRoute(builder: (_) => ProfileScreen());
      case '/nav':
          return MaterialPageRoute(builder: (_) => MyNavBar());
      
      



      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ),
      );
    });
  }
}