import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget{

  void Function(int)? onTabChange;

  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child:GNav(
        mainAxisAlignment: MainAxisAlignment.center,
          color: Colors.grey.shade600,
          activeColor: Colors.pinkAccent,
          backgroundColor: Colors.pink.shade100,
          tabMargin: EdgeInsets.only(top: 10, bottom: 10),
          tabBackgroundColor: Colors.grey.shade50,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
        GButton(icon: Icons.home, text: "Home"),
        GButton(icon: Icons.shopping_cart, text: "Cart",)
      ])
    );
  }

}
