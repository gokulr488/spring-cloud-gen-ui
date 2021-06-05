import 'package:flutter/material.dart';
import 'package:springcloudgenui/components/FormField.dart' as Form;
import 'package:springcloudgenui/components/GridLayout.dart';

class BaseProjectForm extends StatefulWidget {
  const BaseProjectForm({Key? key}) : super(key: key);

  @override
  _BaseProjectFormState createState() => _BaseProjectFormState();
}

class _BaseProjectFormState extends State<BaseProjectForm> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridLayout(
        children: [Form.FormField(fieldName: 'Package Name')],
      ),
    );
  }
}
