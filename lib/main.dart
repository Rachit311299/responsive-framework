import 'package:flutter/material.dart';

void main() {
  runApp(const GalleryApp());
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Gallery',
      home: Scaffold(
        appBar: AppBar(title: const Text("Responsive Image Gallery")),
        body: const Padding(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 10),
          child: ResponsiveImageGrid(),
        ),
      ),
    );
  }
}

class ResponsiveImageGrid extends StatelessWidget {
  const ResponsiveImageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        int columns;
        if (constraints.maxWidth < 600) {
          columns = 2;
        } else if (constraints.maxWidth < 1000) {
          columns = 3;
        } else {
          columns = 4;
        }

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              child: Center(
                child: Text('Image ${index + 1}'),
              ),
            );
          },
        );
      },
    );
  }
}
