// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D64EB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 55,),
                Text(
                  'New here?',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 20),
                  ),
                  Text(
                  'Create a Account',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26),
                ),
                const SizedBox(height: 60,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                        child: Image.asset('assets/images/user.png', width: 10, height: 10),
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
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: TextStyle(color: Colors.black,fontSize: 12 ,fontWeight: FontWeight.w300),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                        child: Image.asset('assets/images/user.png', width: 10, height: 10),
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
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    style: TextStyle(fontSize: 12),
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black,fontSize: 12 ,fontWeight: FontWeight.w300),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 10),
                        child: Image.asset('assets/images/mail.png', width: 10, height: 10),
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
                SizedBox(height: 10,),
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
                SizedBox(height: 50,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(330, 56),
                    backgroundColor: Color(0xFF94ACFD)
                  ),
                  onPressed:(){
                    Navigator.pushNamed(context, '/home');
                  } ,
                  child: const Text(
                    'Register',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
                  )
                  ),
                  SizedBox(height: 30,),
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
                SizedBox(height: 10,),
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
              const SizedBox(height: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have a account?',
                  style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w300),
                  ),

                  TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize:16,color: Color(0xFF4285F4) ),
                    ),
                  )
                ],
              ),





              ],





            ),
          ),
        )

        ),

    );
  }
}