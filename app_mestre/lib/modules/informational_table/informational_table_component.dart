import 'package:flutter/material.dart';

import 'informational_table_title.dart';

class InformationalTableComponent extends StatelessWidget {
  final String tableTitle;
  final Color tableRowColor;
  final double? tableWidth;
  final List<String> columnTitles;
  final List<List<String>> data;

  const InformationalTableComponent({
    required this.tableTitle,
    required this.columnTitles, 
    required this.data, 
    this.tableWidth,
    this.tableRowColor = Colors.white, 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: tableWidth ?? 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InformationalTableTitle(title: tableTitle,),
          Table(
            children: [
              // title of each column
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                children: columnTitles.map(
                  (title) => Text(title, style: TextStyle(fontWeight: FontWeight.bold))
                ).toList(),
              ),
              // table values
              ...data.asMap().entries.map((entry) {
                  int index = entry.key;
                  List<String> linha = entry.value;

                  // verifies if row is odd or even. Paints the row if it is even;
                  // index % 2 == 0? rowColor = tableRowColor : rowColor = Colors.white;

                  return TableRow(
                    decoration: index % 2 == 0? 
                    BoxDecoration(
                      color: tableRowColor.withAlpha(50),
                    ): null,
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