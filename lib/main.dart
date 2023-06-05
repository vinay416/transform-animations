import 'package:flutter/material.dart';
import 'package:transformation/animate.dart';
import 'package:transformation/flip_card/flip_card.dart';
import 'package:transformation/transformations/flip_transform.dart';
import 'package:transformation/transformations/rotate_transform.dart';
import 'package:transformation/transformations/scale_transform.dart';
import 'package:transformation/transformations/skew_transform.dart';
import 'package:transformation/transformations/translate_transform.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: FlipCard()),
        // body: Center(
        //   child: Animate(
        //     child: (value) {
        //       return FlipTransform(value: value);
        //     },
        //   ),
        // ),
      ),
    );
  }
}
