import 'package:flutter/material.dart';
import 'package:springcloudgenui/components/CheckBoxWidget.dart';
import 'package:springcloudgenui/components/FormFieldWidget.dart';

class BaseProjectForm extends StatelessWidget {
  final TextEditingController packageCtrl =
      TextEditingController(text: 'com.example.springcloudproject');
  final TextEditingController configPortCtrl =
      TextEditingController(text: '9001');
  final TextEditingController discoveryPortCtrl =
      TextEditingController(text: '9002');
  final TextEditingController folderCtrl =
      TextEditingController(text: 'eg: C:\\Users\\username\\eclipse-workspace');
  final TextEditingController projectNameCtrl =
      TextEditingController(text: 'SpringCloudProject');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              children: [
                FormFieldWidget(
                  fieldName: 'Project Name',
                  controller: projectNameCtrl,
                ),
                FormFieldWidget(
                  fieldName: 'Package Name',
                  controller: packageCtrl,
                ),
                FormFieldWidget(
                  fieldName: 'Project Root Folder',
                  controller: folderCtrl,
                ),
                FormFieldWidget(
                  fieldName: 'Config Server Port',
                  controller: configPortCtrl,
                ),
                FormFieldWidget(
                  fieldName: 'Discovery Gateway Port',
                  controller: discoveryPortCtrl,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text('Dependencies',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold)),
                CheckBoxWidget(
                  fieldName: 'Spring Data',
                  onChanged: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
