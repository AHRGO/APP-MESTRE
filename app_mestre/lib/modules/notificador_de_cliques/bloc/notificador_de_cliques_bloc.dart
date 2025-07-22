import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'notificador_de_cliques_event.dart';
part 'notificador_de_cliques_state.dart';

class NotificadorDeCliquesBloc extends Bloc<NotificadorDeCliquesEvent, NotificadorDeCliquesState> {
  NotificadorDeCliquesBloc() : super(NotificadorDeCliquesInitialState()) {
    on<ElementoFoiClicado>((event, emit) async {
      emit(NovoAlertaNotificadoState(message: event.message));

      await Future.delayed(const Duration(seconds: 1));

      emit(NotificadorDeCliquesInitialState());
    });
  }
}
