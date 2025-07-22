
import 'package:flutter/material.dart';

class SquareAtomWidget extends StatelessWidget {
  final double squareSize;
  final Color squareColor;

  const SquareAtomWidget({super.key, this.squareSize = 100, this.squareColor = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: squareColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}