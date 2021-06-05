import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:springcloudgenui/screens/homepage/HomeScreen.dart';

void main() {
  runApp(SpringCloudGen());
}

class SpringCloudGen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spring Cloud Initilizer',
        theme: ThemeData(
            brightness: Brightness.dark,
            textTheme: GoogleFonts.koHoTextTheme(
                ThemeData(brightness: Brightness.dark).textTheme)),
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
        });
  }
}
