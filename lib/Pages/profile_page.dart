// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isNotificationOn = true; // Initial state of the switch
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D64EB),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 15),
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
                    SizedBox(width: 105),
                    Text(
                      'Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    SizedBox(width: 15),
                    GestureDetector(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: _imageFile == null
                            ? AssetImage('assets/images/default_user.png')
                            : FileImage(_imageFile!) as ImageProvider,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'adil',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Fat Loss Program',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 11),
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Color(0xFFafd7ff), Color(0xFFfd9b52)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds);
                              },
                              child: Text(
                                '180cm',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white, // Set the text color to white to apply the gradient
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('Height')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 11),
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Color(0xFFafd7ff), Color(0xFFfd9b52)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds);
                              },
                              child: Text(
                                '75kg',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white, // Set the text color to white to apply the gradient
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('Weight')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(height: 11),
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                  colors: [Color(0xFFafd7ff), Color(0xFFfd9b52)],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(bounds);
                              },
                              child: Text(
                                '25yrs',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white, // Set the text color to white to apply the gradient
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text('Age')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Container(
                      width: 362,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Text('Notification', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(width: 15),
                              Image.asset(
                                'assets/images/notification.png',
                                width: 24,
                                height: 24,
                              ),
                              SizedBox(width: 10),
                              Text('Pop-up Notification', style: TextStyle(color: Color(0xFF8b8183))),
                              Spacer(),
                              Switch(
                                value: _isNotificationOn,
                                onChanged: (bool newValue) {
                                  setState(() {
                                    _isNotificationOn = newValue;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 15),
                    Container(
                      width: 362,
                      height: 294,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 30),
                              Text('Personal Data', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                              Spacer(),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.zero, // Remove default padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15), // Rounded corners
                                  ),
                                ),
                                onPressed: () {
                                  // Your button press action
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF92a5fd), Color(0xFF9ac3ff)], // Gradient colors
                                      begin: Alignment.centerRight, // Start gradient from right
                                      end: Alignment.centerLeft, // End gradient at left
                                    ),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 100, // Set your desired width
                                      minHeight: 40, // Set your desired height
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Save',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                hintText: 'Your Weight',
                                hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                                  child: Image.asset('assets/images/scale.png', width: 10, height: 10),
                                ),
                                fillColor: Color(0xFFf7f8f8),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none, // Make the border transparent
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Make the focused border transparent
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                hintText: 'Your Height',
                                hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                                  child: Image.asset('assets/images/height.png', width: 10, height: 10),
                                ),
                                fillColor: Color(0xFFf7f8f8),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none, // Make the border transparent
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Make the focused border transparent
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                hintText: 'Date of Birth',
                                hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                                  child: Image.asset('assets/images/calendar.png', width: 10, height: 10),
                                ),
                                fillColor: Color(0xFFf7f8f8),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none, // Make the border transparent
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Make the focused border transparent
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                hintText: 'Workout Goal',
                                hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),
                                  child: Image.asset('assets/images/goal.png', width: 10, height: 10),
                                ),
                                fillColor: Color(0xFFf7f8f8),
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none, // Make the border transparent
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none, // Make the focused border transparent
                                  borderRadius: BorderRadius.circular(17),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
