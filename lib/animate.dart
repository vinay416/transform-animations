import 'package:flutter/material.dart';

typedef Build = Widget Function(double value);

class Animate extends StatefulWidget {
  const Animate({required this.child, super.key});
  final Build child;

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    final curve = CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    );
    animation = Tween<double>(begin: 1, end: 2.0).animate(curve);
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return widget.child(animation.value);
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
