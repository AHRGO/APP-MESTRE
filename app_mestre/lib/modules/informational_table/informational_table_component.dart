import 'package:flutter/material.dart';

class InformationalTableComponent extends StatelessWidget {
  final List<String> titles;
  final List<List<String>> data;
  final Color tableRowColor;

  const InformationalTableComponent({
    required this.titles, 
    required this.data, 
    this.tableRowColor = Colors.white, 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 400),
      child: Column(
        children: [
          Table(
            children: [
              // title of each column
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                children: titles.map(
                  (title) => Text(title, style: TextStyle(fontWeight: FontWeight.bold))
                ).toList(),
              ),
              // table values
              ...data.asMap().entries.map((entry) {
                  int index = entry.key;
                  List<String> linha = entry.value;
                  Color rowColor;

                  // verifies if row is odd or even. Paints the row if it is even;
                  index % 2 == 0? rowColor = tableRowColor : rowColor = Colors.white;

                  return TableRow(
                    decoration: BoxDecoration(
                      color: rowColor.withAlpha(50),
                    ),
                    children: linha.map(
                      (texto) => Text(texto)
                      ).toList(),
                  );
              }),
            ]
            
          ),
        ],
      ),
    );
  }
}