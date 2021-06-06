import 'package:flutter/material.dart';
import 'package:springcloudgenui/apis/Apis.dart';
import 'package:springcloudgenui/apis/CallContext.dart';
import 'package:springcloudgenui/apis/ServiceProjectReq.dart';
import 'package:springcloudgenui/commons/AppData.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';
import 'package:springcloudgenui/components/Alerts.dart';
import 'package:springcloudgenui/components/CheckBoxWidget.dart';
import 'package:springcloudgenui/components/FormFieldWidget.dart';
import 'package:springcloudgenui/components/RoundedButton.dart';

class ServiceProjectForm extends StatefulWidget {
  @override
  _ServiceProjectFormState createState() => _ServiceProjectFormState();
}

class _ServiceProjectFormState extends State<ServiceProjectForm> {
  final TextEditingController serviceNameCtrl =
      TextEditingController(text: 'MicroServiceName');

  final TextEditingController servicePortCtrl =
      TextEditingController(text: '9003');

  bool overWriteEnabled = false;
  bool springDataEnabled = false;
  bool springBatchEnabled = false;
  bool swaggerEnabled = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
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
                  controller: servicePortCtrl,
                ),
                CheckBoxWidget(
                  fieldName: 'Overwrite Existing Files ?',
                  initialValue: overWriteEnabled,
                  onChanged: (value) {
                    overWriteEnabled = value;
                    setState(() {});
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
                  initialValue: springDataEnabled,
                  onChanged: (value) {
                    springDataEnabled = value;
                    setState(() {});
                  },
                ),
                CheckBoxWidget(
                  fieldName: 'Spring Batch',
                  initialValue: springBatchEnabled,
                  onChanged: (value) {
                    springBatchEnabled = value;
                    setState(() {});
                  },
                ),
                CheckBoxWidget(
                  fieldName: 'Swagger Documentation',
                  initialValue: swaggerEnabled,
                  onChanged: (value) {
                    swaggerEnabled = value;
                    setState(() {});
                  },
                ),
                Spacer(),
                RoundedButton(
                  onPressed: onGeneratePressed,
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

  void onGeneratePressed() async {
    debugPrint('Generating Base Project');
    ServiceProjectReq req = ServiceProjectReq(
        baseProjectPath: folderCtrl.text,
        serviceName: serviceNameCtrl.text,
        servicePort: servicePortCtrl.text,
        basePackageName: packageCtrl.text,
        discoveryGatewayPort: discoveryPortCtrl.text,
        overWriteExistingFiles: overWriteEnabled);
    CallContext callContext = await Apis().generateServiceProject(req);
    if (callContext.isError) {
      showErrorAlert(context, 'Unable to Generate');
    } else {
      showSilentAlerts('Generated Succesfully');
    }
  }
}
