import 'package:flutter/material.dart';

class SaleTransform extends StatelessWidget {
  const SaleTransform({required this.value, super.key});
  final double value;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()..scale(value),
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
