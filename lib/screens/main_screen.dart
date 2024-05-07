import 'package:flutter/material.dart';
import 'package:sad/screens/cart_screen.dart';
import 'package:sad/screens/settings_screen.dart';
import 'package:sad/screens/shop_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<MainScreen> {
  int _selectedTab = 2;

  void changeTab(int index){
    if(_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  static const List<Widget> _screenList = [
    ShopScreen(),
    CartScreen(),
    SettingsSreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: changeTab,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shop_two), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
          
        ],
      ),
    );
  }
}