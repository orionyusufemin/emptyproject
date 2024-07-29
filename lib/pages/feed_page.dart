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
  int _selectedIndex = 0;
  late List<Widget> _pages;
  void navigateBottomBar(int index) {
    if (mounted) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  void initState() {
    super.initState();

    _pages = [ShopPage(), CartPage(), ProfilePage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar:
            MyBottomNavBar(onTabChange: (index) => navigateBottomBar(index)));
  }
}
