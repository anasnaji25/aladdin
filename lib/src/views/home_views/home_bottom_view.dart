import 'package:aladdin/src/constants/app_colors.dart';
import 'package:aladdin/src/views/cart_view/cart_view.dart';
import 'package:aladdin/src/views/home_views/home_view.dart';
import 'package:aladdin/src/views/search_view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageWithNavigation extends StatefulWidget {
  int index;
  HomePageWithNavigation({Key? key, this.index = 0}) : super(key: key);

  @override
  State<HomePageWithNavigation> createState() => _HomePageWithNavigationState();
}

class _HomePageWithNavigationState extends State<HomePageWithNavigation> {
  int _selectedIndex = 0;
  Color color = const Color.fromARGB(
    255,
    0,
    96,
    50,
  );

  List pages = [
    HomeView(),
    SearchView(),
    CartView(),
    HomeView(),
    HomeView(),
  ];

  void _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedIndex = widget.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
