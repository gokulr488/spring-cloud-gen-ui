import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  final List<Widget> children;

  const GridLayout({required this.children});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: children);
  }
}
