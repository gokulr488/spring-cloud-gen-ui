import 'package:flutter/material.dart';
import 'package:springcloudgenui/apis/Apis.dart';
import 'package:springcloudgenui/apis/BaseProjectReq.dart';
import 'package:springcloudgenui/apis/CallContext.dart';
import 'package:springcloudgenui/commons/AppData.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';
import 'package:springcloudgenui/components/Alerts.dart';
import 'package:springcloudgenui/components/CheckBoxWidget.dart';
import 'package:springcloudgenui/components/FormFieldWidget.dart';
import 'package:springcloudgenui/components/RoundedButton.dart';

class BaseProjectForm extends StatefulWidget {
  @override
  _BaseProjectFormState createState() => _BaseProjectFormState();
}

class _BaseProjectFormState extends State<BaseProjectForm> {
  bool overWriteEnabled = false;
  bool springDataEnabled = false;
  bool springBatchEnabled = false;
  bool swaggerEnabled = false;
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
                Text('Global Dependencies',
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
    BaseProjectReq req = BaseProjectReq(
        rootProjectName: projectNameCtrl.text,
        basePackageName: packageCtrl.text,
        configServerPort: configPortCtrl.text,
        discoveryGatewayPort: discoveryPortCtrl.text,
        projectFolderPath: folderCtrl.text,
        overWriteExistingFiles: overWriteEnabled);
    CallContext callContext = await Apis().generateBaseProject(req);
    if (callContext.isError) {
      showErrorAlert(context, 'Unable to Generate');
    } else {
      showSilentAlerts('Generated Succesfully');
    }
  }
}
