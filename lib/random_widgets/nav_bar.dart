import 'package:flutter/material.dart';
import 'package:workoutapp/Pages/home_page.dart';
import 'package:workoutapp/Pages/notification_page.dart';
import 'package:workoutapp/Pages/profile_page.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({Key? key}) : super(key: key);

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  List<Widget> body = const [
    HomeScreen(),
    ProfileScreen(),
    NotificationScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int newIndex){
          setState(() {
            _selectedIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            label:'Home',
            icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
            label:'Profile',
            icon: Icon(Icons.person)
            ),
            BottomNavigationBarItem(
            label:'Notif',
            icon: Icon(Icons.notifications)
            ),
        ],
      ),
    );
  }
}
