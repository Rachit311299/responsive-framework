import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'home_page.dart';

void main() {
  runApp(MyResponsiveApp());
}

class MyResponsiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveBreakpoints.builder(
        child: widget!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      home: HomePage(),
    );
  }
}
