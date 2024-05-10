// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ... existing code

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D64EB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 75,),
                Text(
                  'Welcome Back',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),
                  ),
                  Text(
                  'Sign in to your Account',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 22),
                ),
                const SizedBox(height: 177,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                        child: Image.asset('assets/images/mail.png', width: 10, height: 10),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.circular(17)
                      )
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                        child: Image.asset('assets/images/lock.png', width: 10, height: 10),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.circular(15)
                      )
                    ),

                  ),
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(330, 56),
                    backgroundColor: Color(0xFF94ACFD)
                  ),
                  onPressed:(){
                    Navigator.pushNamed(context, '/home');
                  } ,
                  child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
                  )
                  ),

               const SizedBox(height: 31,),
              Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 20),



                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Color(0xFF3D64EB), // Background color for the "aura"
                        borderRadius: BorderRadius.circular(5), // Rounded corners for the "aura"
                      ),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(

                    style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)
                      ),


                    ),

                    onPressed: (){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image.asset('assets/images/google.png',width: 25,height: 25,)
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(

                    style:ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)
                      ),


                    ),

                    onPressed: (){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Image.asset('assets/images/facebook.png',width: 25,height: 25,)
                      ],
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have a account yet?',
                  style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w300),
                  ),

                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize:16,color: Color(0xFF4285F4) ),
                    ),
                  )
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