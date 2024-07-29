import 'package:deneme/components/bottom_nav_bar.dart';
import 'package:deneme/pages/cart_page.dart';
import 'package:deneme/pages/profile_page.dart';
import 'package:deneme/pages/shop_page.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  int _selectedIndex = 0;//navbar
  late List<Widget> _pages;//navbar
  void navigateBottomBar(int index) {//navbar
    if (mounted) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void initState() {
    super.initState();

    _pages = [ShopPage(), CartPage(), ProfilePage()];//navbar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(//navbar
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar://navbar
            MyBottomNavBar(onTabChange: (index) => navigateBottomBar(index)));
  }
}
