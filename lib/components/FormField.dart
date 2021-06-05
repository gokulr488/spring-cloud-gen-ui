import 'package:flutter/material.dart';

class FormField extends StatelessWidget {
  final String fieldName;

  const FormField({required this.fieldName});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(fieldName),
      ],
    );
  }
}
