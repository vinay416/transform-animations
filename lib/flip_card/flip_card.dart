import 'dart:math';

import 'package:flutter/material.dart';
import 'package:transformation/flip_card/widgets/card_builder.dart';

class FlipCard extends StatefulWidget {
  const FlipCard({super.key});

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  bool isFront = false;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        final angle = animation.value * pi;
        isFront = isShowFront(angle.abs());

        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, .002)
            ..rotateY(angle),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..rotateY(isFront ? 0 : pi),
            child: isFront ? buildFront : buildBack,
          ),
        );
      },
    );
  }

  Widget get buildFront {
    return InkWell(
      onTap: () => onTap(),
      child: const CardBuilder(
        color: Colors.amberAccent,
        title: 'Vinay Sharma',
      ),
    );
  }

  Widget get buildBack {
    return InkWell(
      onTap: () => onTap(),
      child: const CardBuilder(
        color: Colors.blue,
        title: 'Developer',
      ),
    );
  }

  void onTap() async {
    if (controller.isAnimating) return;
    isFront = !isFront;
    if (isFront) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  bool isShowFront(double angle) {
    const double degree90 = pi / 2;
    const double degree270 = 3 * pi / 2;

    return angle <= degree90 || angle >= degree270;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
