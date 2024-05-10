import 'package:flutter/material.dart';

class EnrollmentScreen extends StatelessWidget {
  const EnrollmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D64EB),
      body: Column(
        children: [
          Container(
            height: 400, // Adjust the height of the image container
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Enrollment Pic.png'), // Path to your image
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(350, 50),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text('Sign In'),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(350, 50),
                        side: BorderSide(color: Colors.white),
                        backgroundColor: Color(0xFF3D64EB),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        'Create an account',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}