import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'active_nav_icon.dart';
import 'package:serei_app/modules/home/screens/home_screen_ui.dart';
import 'package:serei_app/modules/categories/screens/big_categories_ui.dart';

class SereiBottomNav extends StatefulWidget {
  @override
  _SereiBottomNavState createState() => _SereiBottomNavState();
}

class _SereiBottomNavState extends State<SereiBottomNav> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void onTappedBar(int index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.16),
            spreadRadius: 1.0,
            blurRadius: 15.0)
      ]),
      height: 70.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        child: Column(
          children: [
            Expanded(
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: false,
                onTap: onTappedBar,
                currentIndex: selectedIndex,
                showSelectedLabels: false,
                unselectedItemColor: Color(0xFF49475A),
                selectedItemColor: Colors.red,
                iconSize: 25.0,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Categories',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.mail),
                    label: 'Inbox',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications), label: 'Notification'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Profile'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
