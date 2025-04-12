import 'package:ecommerce/pages/shop_page.dart';
import 'package:ecommerce/utils/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.orange.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(color: Colors.pink),
                    child: Image.asset(
                      'lib/images/nike.png',
                      color: Colors.white,
                    ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      title: const Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: Icon(Icons.home, color: Colors.deepPurple),
                    )
                ),
              ],

            ),
            const Padding(padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                title: const Text(
                  'Log out',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(Icons.logout, color: Colors.deepPurple),
              ),
            )
          ],
        ),
      ),
    body: _pages[_selectedIndex],
    );
  }
}
