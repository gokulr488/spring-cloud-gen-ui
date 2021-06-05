import 'package:flutter/material.dart';

class ScrollableList extends StatelessWidget {
  final List<Widget> items;
  final double childrenHeight;
  final int? flex;
  final ScrollController? scrollController;
  ScrollableList(
      {required this.items,
      required this.childrenHeight,
      this.scrollController,
      this.flex});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      controller: scrollController,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: childrenHeight,
          child: items[index],
        );
      },
    );
  }
}
