part of 'notificador_de_cliques_bloc.dart';

sealed class NotificadorDeCliquesState extends Equatable {
  const NotificadorDeCliquesState();

  @override
  List<Object> get props => [];
}

class NotificadorDeCliquesInitialState extends NotificadorDeCliquesState {}

class NovoAlertaNotificadoState extends NotificadorDeCliquesState {
  final String message;
  const NovoAlertaNotificadoState({required this.message});
}
