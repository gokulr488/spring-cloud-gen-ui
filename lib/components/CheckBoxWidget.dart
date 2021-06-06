import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';

class CheckBoxWidget extends StatelessWidget {
  final String fieldName;
  final bool initialValue;
  final Function onChanged;

  const CheckBoxWidget(
      {required this.fieldName,
      this.initialValue = false,
      required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(fieldName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kHighlightColour)),
        Checkbox(
            activeColor: kHighlightColour,
            value: initialValue,
            onChanged: onChanged(bool))
      ]),
    );
  }
}
