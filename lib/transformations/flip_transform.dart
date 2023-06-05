import 'package:flutter/material.dart';

class FlipTransform extends StatelessWidget {
  const FlipTransform({required this.value, super.key});
  final double value;

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipX: true,
      // flipY: true,
      // origin: const Offset(100, 100),
      child: Container(
        color: Colors.blueAccent,
        height: 200,
        width: 200,
        child: const Center(child: Text("CODE")),
      ),
    );
  }
}
