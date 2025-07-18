import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/notificador_de_cliques_bloc.dart';
import 'notificador_de_cliques_widget.dart';

class NotificadorDeCliquesComponent extends StatelessWidget {
  final Widget child;
  final String message;

  const NotificadorDeCliquesComponent({required this.child, required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NotificadorDeCliquesBloc(),
      child: NotificadorDeCliquesWidget(
        message: message,
        child: child,
      ),
    );
  }
}
