import 'package:flutter/material.dart';
import 'package:respo/menus/bottom_nav_bar.dart';
import 'package:respo/menus/side_bar.dart';
import 'package:respo/menus/side_rail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    Widget navigation;
    if (screenWidth < 600) {
      navigation = BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      );
    } else if (screenWidth < 1200) {
      navigation = NavigationRailMenu(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      );

    } else {
      navigation = SidebarMenu(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Responsive UI using MediaQuery")),
      body: Row(
        children: [
          // Sidebar
          if (screenWidth >= 600) navigation,
          // Filler Content
          Expanded(
            child: Center(
              child: _selectedIndex == 0
                  ? Text("Home Content")
                  : Text("Settings Content"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: screenWidth < 600 ? navigation : null,
    );
  }
}
