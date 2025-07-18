
import 'package:flutter/material.dart';

class SquareAtomWidget extends StatelessWidget {
  const SquareAtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}