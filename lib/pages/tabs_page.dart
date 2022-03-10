import 'package:flutter/material.dart';
import 'package:travel_ui_app/pages/category/category_page.dart';
import 'package:travel_ui_app/utils/colors.dart';

import 'home/home_page.dart';

class TabsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TabsPageState();
  }
}

class _TabsPageState extends State<TabsPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const HomePage(),
    const CategoryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border:
              Border(top: BorderSide(color: Colors.grey.shade300, width: 1.0)),
        ),
        child: BottomNavigationBar(
          iconSize: 22,
          elevation: 0,
          unselectedItemColor: Theme.of(context).focusColor.withOpacity(1),
          selectedLabelStyle: Theme.of(context)
              .textTheme
              .bodyText1!
              .merge(const TextStyle(fontSize: 12)),
          showSelectedLabels: true,
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .button!
              .merge(const TextStyle(fontSize: 11)),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: AppColors.blackColor),
              activeIcon: Icon(Icons.home, color: AppColors.primaryColor),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: AppColors.blackColor),
              activeIcon: Icon(Icons.favorite, color: AppColors.primaryColor),
              label: 'Favoris',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list, color: AppColors.blackColor),
              activeIcon: Icon(Icons.list, color: AppColors.primaryColor),
              label: 'Categories',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.primaryColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
