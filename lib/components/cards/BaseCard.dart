import 'package:flutter/material.dart';
import 'package:springcloudgenui/commons/UiConstants.dart';

class BaseCard extends StatelessWidget {
  final Function onTap;
  final Widget cardChild;
  final Color? color;
  final double? elevation;

  BaseCard(
      {required this.onTap,
      required this.cardChild,
      this.color,
      this.elevation});
  @override
  InkWell build(BuildContext context) {
    return InkWell(
      splashColor: Colors.teal,
      onTap: onTap(),
      child: Card(
        child: Center(
          child: cardChild,
        ),
        color: color ?? kCardOverlay[elevation] ?? kCardOverlay[4],
        elevation: elevation ?? 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
