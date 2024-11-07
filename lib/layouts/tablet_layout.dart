import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tablet Layout")),
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: 0,
            onDestinationSelected: (int index) {},
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text("Home"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text("Settings"),
              ),
            ],
          ),
          const Expanded(child: Center(child: Text("Tablet Content"))),
        ],
      ),
    );
  }
}
