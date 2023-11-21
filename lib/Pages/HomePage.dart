import 'package:flutter/material.dart';
import 'package:flutter_application_4/Pages/CartPage.dart';
import 'package:flutter_application_4/Pages/ShopPage.dart';
import 'package:flutter_application_4/Pages/const.dart';
import 'package:flutter_application_4/components/bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate the botton bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages
  final List<Widget> _pages = [
    // shop page
    ShopPage(),

    // Cart Page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: bottomNavbar(
          onTabChnage: (index) => navigateBottomBar(index),
        ),
        appBar: AppBar(backgroundColor: backgroundColor),
        drawer: Drawer(
          backgroundColor: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const DrawerHeader(
                    child: Icon(Icons.coffee_maker_rounded, size: 70)),

                // Home
                ListTile(
                  leading: const Icon(Icons.home_filled,
                      size: 25, color: Colors.black),
                  title: Text("Shop",
                      style: TextStyle(fontSize: 25, color: Colors.brown[700])),
                ),

                // Cart
                ListTile(
                  leading: const Icon(Icons.shopping_bag_rounded,
                      size: 25, color: Colors.black),
                  title: Text("Cart",
                      style: TextStyle(fontSize: 25, color: Colors.brown[700])),
                ),

                // profile
                ListTile(
                  leading:
                      const Icon(Icons.person, size: 25, color: Colors.black),
                  title: Text("Profile",
                      style: TextStyle(fontSize: 25, color: Colors.brown[700])),
                ),

                // profile
                ListTile(
                  leading:
                      const Icon(Icons.logout, size: 25, color: Colors.brown),
                  title: Text("Logout",
                      style: TextStyle(fontSize: 25, color: Colors.brown[700])),
                ),
              ],
            ),
          ),
        ),
        body: _pages[_selectedIndex],
      ),
    );
  }
}
