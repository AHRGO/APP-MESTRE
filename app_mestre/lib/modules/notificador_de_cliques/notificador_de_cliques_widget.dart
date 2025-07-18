import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:sisteplan_widgets_package/toast.dart';

import 'bloc/notificador_de_cliques_bloc.dart';

class NotificadorDeCliquesWidget extends StatelessWidget {
  final String message;
  final Widget child;

  const NotificadorDeCliquesWidget({
    required this.message,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificadorDeCliquesBloc, NotificadorDeCliquesState>(
      listener: (context, state) {
        if (state is NovoAlertaNotificadoState) {
          // ToastUtils.showInfoToast(context, state.message);
          final snackBar = SnackBar(content: Text(message));

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: GestureDetector(
        onTap: () {
          context.read<NotificadorDeCliquesBloc>().add(
                ElementoFoiClicado(message: message),
              );
        },
        child: child,
      ),
    );
  }
}
