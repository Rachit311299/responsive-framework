import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    // Get the current breakpoint name
    String screenSizeName = ResponsiveBreakpoints.of(context).breakpoint.name ?? 'Unknown';

    // Determine whether to show the sidebar based on breakpoint
    bool showSidebar = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Scaffold(
      appBar: AppBar(title: Text('Responsive App')),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sidebar for larger screens
          if (showSidebar)
            Container(
              width: 200,
              child: buildSideNavigationRail(),
            ),
          // Main content area
          Expanded(
            child: Center(
              child: Text(
                'Screen Size: $screenSizeName',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
      // Display bottom navigation bar only on smaller screens
      bottomNavigationBar: showSidebar ? null : buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }

  Widget buildSideNavigationRail() {
    return Padding(
      padding: EdgeInsets.zero,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildSidebarButton(Icons.home, 'Home', 0),
            buildSidebarButton(Icons.search, 'Search', 1),
            buildSidebarButton(Icons.settings, 'Settings', 2),
          ],
        ),
      ),
    );
  }

  Widget buildSidebarButton(IconData icon, String label, int index) {
    final Color selectedColor = Theme.of(context).primaryColor;
    final Color unselectedColor = Colors.grey;

    return Container(
      alignment: Alignment.centerLeft,
      child: TextButton.icon(
        onPressed: () => _onItemTapped(index),
        icon: Icon(
          icon,
          color: _selectedIndex == index ? selectedColor : unselectedColor,
        ),
        label: Text(
          label,
          style: TextStyle(
            color: _selectedIndex == index ? selectedColor : unselectedColor,
          ),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          alignment: Alignment.centerLeft,
          minimumSize: Size(200, 50),
        ),
      ),
    );
  }
}
