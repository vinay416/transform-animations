import 'package:flutter/material.dart';

class TranslateTransform extends StatelessWidget {
  const TranslateTransform({required this.value, super.key});
  final double value;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..translate(
          value * 25,
          value * -25,
        ),
      alignment: Alignment.center,
      child: Container(
        color: Colors.blueAccent,
        height: 200,
        width: 200,
      ),
    );
  }
}
