import 'package:flutter/material.dart';
import 'package:mamas_goodboy/screen/category_screen.dart';
import 'package:mamas_goodboy/screen/home_screen.dart';
import 'package:mamas_goodboy/screen/login_signup/search_screen.dart';
import 'package:mamas_goodboy/screen/profile_screen.dart';
import 'package:mamas_goodboy/widget/appbar.dart';
import 'package:mamas_goodboy/widget/drawer_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  final List _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CategoryScreen(),
    const AccountScreen()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMethod(),
        body: _screens[_currentIndex],
        drawer: const MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue[700],
          selectedFontSize: 13,
          unselectedFontSize: 13,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Categories",
              icon: Icon(Icons.grid_view),
            ),
            BottomNavigationBarItem(
              label: "My Account",
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ));
  }
}