part of 'notificador_de_cliques_bloc.dart';

sealed class NotificadorDeCliquesEvent extends Equatable {
  const NotificadorDeCliquesEvent();

  @override
  List<Object> get props => [];
}

class ElementoFoiClicado extends NotificadorDeCliquesEvent {
  final String message;

  const ElementoFoiClicado({required this.message});

  @override
  List<Object> get props => [message];
}
