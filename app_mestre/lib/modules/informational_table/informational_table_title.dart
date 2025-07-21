import 'package:flutter/material.dart';

class InformationalTableTitle extends StatelessWidget {
  final String title;

  const InformationalTableTitle({required this.title, super.key});

  //TODO: Finalizar estilo 
  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}