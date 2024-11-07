import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Desktop Layout")),
      body: const Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ListTile(title: Text("Home"), leading: Icon(Icons.home)),
                ListTile(title: Text("Settings"), leading: Icon(Icons.settings)),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Center(child: Text("Desktop Content")),
          ),
        ],
      ),
    );
  }
}
