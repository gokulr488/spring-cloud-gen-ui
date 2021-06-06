import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';

class FormFieldWidget extends StatelessWidget {
  final String fieldName;
  final TextEditingController controller;

  const FormFieldWidget({required this.fieldName, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(fieldName,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: kWhite80)),
          SizedBox(
            width: 400,
            height: 45,
            child: TextFormField(
              controller: controller,
              decoration: kTextFieldDecoration,
            ),
          ),
        ],
      ),
    );
  }
}
