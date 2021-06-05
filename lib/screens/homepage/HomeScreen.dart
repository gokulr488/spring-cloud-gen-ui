import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';
import 'package:springcloudgenui/components/BaseScreen.dart';
import 'package:springcloudgenui/components/HorLine.dart';
import 'package:springcloudgenui/screens/homepage/BaseProjectForm.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Column(
        children: [
          _Header(),
          Text('Base Project Info',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.green,
                  fontWeight: FontWeight.bold)),
          HorLine(),
          BaseProjectForm(),
          Text('Child Projects Info',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.green,
                  fontWeight: FontWeight.bold)),
          HorLine(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.warning_amber_outlined,
          size: 50,
          color: Colors.green,
        ),
        Text('Spring ',
            style: TextStyle(
                fontSize: 28,
                color: Colors.green,
                fontWeight: FontWeight.bold)),
        Text('Cloud Generator',
            style: TextStyle(
                fontSize: 30, color: kWhite80, fontWeight: FontWeight.bold))
      ],
    );
  }
}
