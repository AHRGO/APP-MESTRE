import 'package:flutter/material.dart';

class PinkSquareWidget extends StatelessWidget {
  final double size;

  /// This is a widget that displays a pink square. Used for placeholder purposes.
  const PinkSquareWidget({super.key, this.size = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
