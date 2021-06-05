import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingDots extends StatelessWidget {
  const LoadingDots({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitThreeBounce(
        color: Colors.yellow[900],
        size: size,
      ),
    );
  }
}
