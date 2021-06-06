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
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(fieldName,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: kWhite80)),
        Checkbox(
            activeColor: kHighlightColour,
            value: initialValue,
            onChanged: (value) => onChanged(value))
      ]),
    );
  }
}
