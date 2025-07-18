import 'package:app_mestre/modules/notificador_de_cliques/notificador_de_cliques_component.dart';
import 'package:app_mestre/widgets/pink_square_widget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: NotificadorDeCliquesComponent(
      message: "Clicou no quadrado rosa!",
      child: const PinkSquareWidget(),
    ),
    
    );
  }
}
