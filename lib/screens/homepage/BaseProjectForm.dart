import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';
import 'package:springcloudgenui/components/CheckBoxWidget.dart';
import 'package:springcloudgenui/components/FormFieldWidget.dart';
import 'package:springcloudgenui/components/RoundedButton.dart';

class BaseProjectForm extends StatefulWidget {
  @override
  _BaseProjectFormState createState() => _BaseProjectFormState();
}

class _BaseProjectFormState extends State<BaseProjectForm> {
  final TextEditingController packageCtrl =
      TextEditingController(text: 'com.example.springcloudproject');

  final TextEditingController configPortCtrl =
      TextEditingController(text: '9001');

  final TextEditingController discoveryPortCtrl =
      TextEditingController(text: '9002');

  final TextEditingController folderCtrl =
      TextEditingController(text: 'C:\\Users\\username\\eclipse-workspace');

  final TextEditingController projectNameCtrl =
      TextEditingController(text: 'SpringCloudProject');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
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
                CheckBoxWidget(
                  fieldName: 'Overwrite Existing Files ?',
                  onChanged: (value) {
                    //setState(() {});
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text('Global Dependencies',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                        fontWeight: FontWeight.bold)),
                CheckBoxWidget(
                  fieldName: 'Spring Data',
                  onChanged: (value) {
                    //setState(() {});
                  },
                ),
                CheckBoxWidget(
                  fieldName: 'Spring Batch',
                  onChanged: (value) {
                    //setState(() {});
                  },
                ),
                CheckBoxWidget(
                  fieldName: 'Swagger Documentation',
                  onChanged: (value) {
                    //setState(() {});
                  },
                ),
                Spacer(),
                RoundedButton(
                  onPressed: () {},
                  width: 150,
                  title: 'Generate',
                  colour: kHighlightColour,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
