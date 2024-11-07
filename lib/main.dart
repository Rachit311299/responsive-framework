import 'package:flutter/material.dart';
import 'package:respo/layouts/desktop_layout.dart';
import 'package:respo/layouts/mobile_layout.dart';
import 'package:respo/layouts/tablet_layout.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile layout
              return const MobileLayout();
            } else if (constraints.maxWidth < 1200) {
              // Tablet layout
              return const TabletLayout();
            } else {
              // Desktop layout
              return const DesktopLayout();
            }
          },
        ),
      ),
    );
  }
}
