import 'package:flutter/material.dart';

class SkewTransform extends StatelessWidget {
  const SkewTransform({required this.value, super.key});
  final double value;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.skewY(value / 5),
      alignment: Alignment.center,
      child: Container(
        color: Colors.blueAccent,
        height: 200,
        width: 200,
      ),
    );
  }
}
