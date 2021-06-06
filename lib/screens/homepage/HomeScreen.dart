import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';
import 'package:springcloudgenui/components/BaseScreen.dart';
import 'package:springcloudgenui/components/HorLine.dart';
import 'package:springcloudgenui/screens/homepage/BaseProjectForm.dart';
import 'package:springcloudgenui/screens/homepage/ServiceProjectForm.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> serviceProjects = [ServiceProjectForm(), HorLine()];
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Micro Services',
                      style: TextStyle(
                          fontSize: 23,
                          color: kHighlightColour,
                          fontWeight: FontWeight.bold)),
                  IconButton(
                      onPressed: () {
                        serviceProjects.add(ServiceProjectForm());
                        serviceProjects.add(HorLine());
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.add,
                        size: 50,
                        color: kRedColor,
                      ))
                ],
              ),
            ),
            HorLine(),
            Column(children: serviceProjects),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Icon(
            Icons.warning_amber_outlined,
            size: 50,
            color: Colors.green,
          ),
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
