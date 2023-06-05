import 'package:flutter/material.dart';

class CardBuilder extends StatelessWidget {
  const CardBuilder({
    required this.color,
    required this.title,
    super.key,
  });
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Card(
        color: color,
        child: Center(child: Text(title)),
      ),
    );
  }
}
