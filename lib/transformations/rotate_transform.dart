import 'package:flutter/material.dart';

class RotateTransform extends StatelessWidget {
  const RotateTransform({required this.value, super.key});
  final double value;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..rotateX(value * 1.5)
        ..rotateY(value * 1.5)
        ..rotateZ(value * 1.5),
      origin: const Offset(100, 100),
      // alignment: Alignment.bottomRight,
      child: Container(
        color: Colors.blueAccent,
        height: 200,
        width: 200,
      ),
    );
  }
}
