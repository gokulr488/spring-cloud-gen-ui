import 'package:flutter/material.dart';

const Color kBackgroundColor = Color(0xFF121212);
const Color kHighlightColour = Colors.green;
const Color kRedColor = Color(0xFF7f0000);
const Color kBlueColor = Color(0xFF0d47a1);
const Color kAlertColor = Color(0x801b1b1b);
const Color kWhite25 = Color(0x40FFFFFF);
const Color kWhite80 = Color(0xCCFFFFFF);

const Color selectedCardColor = Color(0x40ffab91);

const String kDateFormat = 'yyyy-MM-dd';
const TextStyle kScreenHeadingStyle =
    TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: kWhite80);

const kTextFieldDecoration = InputDecoration(
    labelStyle: TextStyle(fontSize: 16),
    contentPadding: EdgeInsets.all(10),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kHighlightColour),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFc4001d), width: 2),
        borderRadius: BorderRadius.all(Radius.circular(25))));

const Map<int, Color> kCardOverlay = {
  1: Color(0x0DFFFFFF),
  2: Color(0x12FFFFFF),
  3: Color(0x14FFFFFF),
  4: Color(0x17FFFFFF),
  6: Color(0x1CFFFFFF),
  8: Color(0x1FFFFFFF),
  12: Color(0x24FFFFFF),
  16: Color(0x26FFFFFF),
  24: Color(0x29FFFFFF),
};

const kAnimDuraction = Duration(milliseconds: 300);
const kAnimCurve = Curves.easeOut;
