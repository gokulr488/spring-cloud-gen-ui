import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavBar;
  BaseScreen({required this.child, this.bottomNavBar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: child,
        ),
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
