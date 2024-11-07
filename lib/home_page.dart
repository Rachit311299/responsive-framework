import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light grey background for outer area
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1000), // Restrict width of content area
          color: Colors.white, // White background for the entire content area
          child: Column(
            children: [
              // Custom AppBar within the constrained width
              Container(
                padding: EdgeInsets.all( 16.0),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'MINIMAL',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    // Navigation buttons with wrapping and conditional visibility
                    ResponsiveVisibility(
                      visible: false,
                      visibleConditions: [
                        Condition.largerThan(name: MOBILE),  // Show on tablet and larger
                      ],
                      child: Expanded(
                        child: Wrap(
                          alignment: WrapAlignment.end,
                          spacing: 16.0,
                          runSpacing: 8.0,
                          children: [
                            TextButton(onPressed: () {}, child: Text("HOME")),
                            TextButton(onPressed: () {}, child: Text("PORTFOLIO")),
                            TextButton(onPressed: () {}, child: Text("STYLE")),
                            TextButton(onPressed: () {}, child: Text("ABOUT")),
                            TextButton(onPressed: () {}, child: Text("CONTACT")),
                          ],
                        ),
                      ),
                    ),
                    // Menu icon for smaller screens with Builder for correct context
                    ResponsiveVisibility(
                      visible: false,
                      visibleConditions: [Condition.smallerThan(name: TABLET)], // Show only on mobile
                      child: Builder(
                        builder: (context) => IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey[300]), // Divider below the AppBar

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Main image section with auto-scaling
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          height: ResponsiveValue<double>(
                            context,
                            defaultValue: 400.0,
                            conditionalValues: [
                              Condition.smallerThan(name: TABLET, value: 250.0),
                              Condition.equals(name: TABLET, value: 350.0),
                              Condition.largerThan(name: TABLET, value: 400.0),
                            ],
                          ).value,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1506619216599-9d16d0903dfd?q=80&w=2669&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      // Text content section
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'A BETTER BLOG FOR WRITING',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt.',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 16),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('READ MORE'),
                            ),
                          ],
                        ),
                      ),
                      // Additional content sections with auto-scaling
                      Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Container(
                          height: ResponsiveValue<double>(
                            context,
                            defaultValue: 400.0,
                            conditionalValues: [
                              Condition.smallerThan(name: TABLET, value: 250.0),
                              Condition.equals(name: TABLET, value: 350.0),
                              Condition.largerThan(name: TABLET, value: 400.0),
                            ],
                          ).value,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?q=80&w=2667&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DESIGN AND DEVELOPMENT',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'I design and develop experiences that make people\'s lives simple.',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 16),
                            OutlinedButton(
                              onPressed: () {},
                              child: Text('LEARN MORE'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            ListTile(title: Text("HOME"), onTap: () {}),
            ListTile(title: Text("PORTFOLIO"), onTap: () {}),
            ListTile(title: Text("STYLE"), onTap: () {}),
            ListTile(title: Text("ABOUT"), onTap: () {}),
            ListTile(title: Text("CONTACT"), onTap: () {}),
          ],
        ),
      ),
    );
  }
}
