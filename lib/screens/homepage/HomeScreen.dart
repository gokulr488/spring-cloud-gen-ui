import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';
import 'package:springcloudgenui/components/BaseScreen.dart';
import 'package:springcloudgenui/components/HorLine.dart';
import 'package:springcloudgenui/screens/homepage/BaseProjectForm.dart';
import 'package:springcloudgenui/screens/homepage/ServiceProjectForm.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _Header(),
            Text('Base Project',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            HorLine(),
            BaseProjectForm(),
            Text('Child Projects',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            HorLine(),
            _ServiceProjects(),
          ],
        ),
      ),
    );
  }
}

class _ServiceProjects extends StatefulWidget {
  @override
  __ServiceProjectsState createState() => __ServiceProjectsState();
}

class __ServiceProjectsState extends State<_ServiceProjects> {
  final List<Widget> serviceProjects = [ServiceProjectForm(), HorLine()];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: serviceProjects,
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
        Text('spring ',
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
