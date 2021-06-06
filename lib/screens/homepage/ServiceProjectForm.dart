import 'package:flutter/material.dart';
import 'package:springcloudgenui/components/CheckBoxWidget.dart';
import 'package:springcloudgenui/components/FormFieldWidget.dart';

class ServiceProjectForm extends StatefulWidget {
  @override
  _ServiceProjectFormState createState() => _ServiceProjectFormState();
}

class _ServiceProjectFormState extends State<ServiceProjectForm> {
//   {
//   "overWriteExistingFiles": true,
//   "serviceName": "string",
//   "servicePort": "string"
// }
  final TextEditingController serviceNameCtrl =
      TextEditingController(text: 'MicroServiceName');

  final TextEditingController servicePort = TextEditingController(text: '9003');
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
                  fieldName: 'Micro-Service Name',
                  controller: serviceNameCtrl,
                ),
                FormFieldWidget(
                  fieldName: 'Service Port',
                  controller: servicePort,
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
                Text('Dependencies',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
