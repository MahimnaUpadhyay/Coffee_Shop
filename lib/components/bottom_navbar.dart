import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class bottomNavbar extends StatelessWidget {
  void Function (int)? onTabChnage;
  bottomNavbar({super.key, required this.onTabChnage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GNav(
          onTabChange: (value) => onTabChnage!(value),
          color: Colors.grey[400],
          activeColor: Colors.black,
          mainAxisAlignment: MainAxisAlignment.center,
          tabs: const [
            GButton(icon: Icons.home_filled, text: "Home"),
            GButton(icon: Icons.shopping_bag, text: "Cart"),
          ]),
    );
  }
}
