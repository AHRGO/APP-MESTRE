import 'package:app_mestre/modules/informational_table/informational_table_component.dart';
import 'package:flutter/material.dart';


class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InformationalTableComponent(
      tableTitle: "Aldeias-Portal",
      tableRowColor: Colors.blueGrey,
      tableWidth: 400,      
      columnTitles: ['Item', 'Tipo', 'Preço por Dose'],
      data: [
        ['Essência de éter', 'Inalação', '300 PO'],
        ['Lágrimas da meia noite', 'Ingestão', '1.500 PO'],
        ['Malícia', 'Inalação', '250 PO'],
        ['Muco de rastejador', 'Contato', '200 PO'],
        ['Óleo de Taggit', 'Contato', '400 PO'],
      ],
    ); 
    
  }
}
