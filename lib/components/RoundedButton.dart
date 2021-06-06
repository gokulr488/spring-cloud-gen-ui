import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.title,
      this.colour,
      required this.onPressed,
      this.width,
      this.child});

  final Color? colour;
  final String? title;
  final double? width;
  final Widget? child;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
            elevation: 5.0,
            color: colour,
            borderRadius: BorderRadius.circular(30.0),
            child: MaterialButton(
                onPressed: onPressed(),
                minWidth: width,
                height: 42.0,
                child: child != null
                    ? child
                    : Text(title ?? '',
                        style: TextStyle(
                            color: kWhite80,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)))));
  }
}
