import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serei_app/providers/app_provider.dart';
import 'package:serei_app/widgets/bottom_nav/active_nav_icon.dart';
import 'modules/home/screens/home_screen.dart';
import 'modules/categories/screens/big_categories.dart';
import 'modules/inbox/screens/inbox_screen.dart';
import 'modules/notification/screens/notification_screen.dart';
import 'modules/profile/screens/profile_screen.dart';

class SereiAppMainNavigation extends StatefulWidget {
  @override
  _SereiAppMainNavigationState createState() => _SereiAppMainNavigationState();
}

class _SereiAppMainNavigationState extends State<SereiAppMainNavigation> {
  final tabs = [
    HomeScreen(),
    BigCategories(),
    InboxScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SereiAppProvider sereiAppProvider =
        Provider.of<SereiAppProvider>(context, listen: false);
    void onTappedBar(int index) {
      setState(() {
        sereiAppProvider.activeTabIndex = index;
      });
    }

    return Scaffold(
      body: tabs[sereiAppProvider.activeTabIndex],
      bottomNavigationBar: Container(
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
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            onTap: onTappedBar,
            currentIndex: sereiAppProvider.activeTabIndex,
            showSelectedLabels: false,
            unselectedItemColor: Color(0xFF49475A),
            selectedItemColor: Color(0xFF494750),
            iconSize: 25.0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                activeIcon: ActiveNavIcon(navIcon: Icon(Icons.home)),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Categories',
                  activeIcon: ActiveNavIcon(navIcon: Icon(Icons.search))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mail),
                  label: 'Inbox',
                  activeIcon: ActiveNavIcon(navIcon: Icon(Icons.mail))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications),
                  label: 'Notification',
                  activeIcon:
                      ActiveNavIcon(navIcon: Icon(Icons.notifications))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                  activeIcon: ActiveNavIcon(navIcon: Icon(Icons.person))),
            ],
          ),
        ),
      ),
    );
  }
}
