part of 'ticket_bloc.dart';

@freezed
class TicketState with _$TicketState {
  const TicketState._();

  const factory TicketState.waiting(Ticket ticket) = _TicketWaitingState;

  const factory TicketState.initial() = _TicketInitialState;

  const factory TicketState.loading(
    Ticket ticket,
    double current,
    double size,
  ) = _TicketLoadingState;

  const factory TicketState.loaded(Ticket ticket) = _TicketLoadedState;

  const factory TicketState.paused(
    Ticket ticket,
  ) = _TicketPausedState;

  String get name => when(
        waiting: (ticket) => ticket.name,
        initial: () => '',
        loading: (ticket, _, __) => ticket.name,
        loaded: (ticket) => ticket.name,
        paused: (ticket) => ticket.name,
      );

  Ticket? get ticket => when(
      waiting: (ticket) => ticket,
      initial: () => null,
      loading: (ticket, _, __) => ticket,
      loaded: (ticket) => ticket,
      paused: (ticket) => ticket);

  double get value => maybeWhen(
        orElse: () => 0,
        loading: (_, current, max) => (current / max),
      );

  int get id => maybeWhen(
        orElse: () => 0,
        waiting: (ticket) => ticket.id,
        loaded: (ticket) => ticket.id,
      );

  String get url => maybeWhen(
        orElse: () => '',
        waiting: (ticket) => ticket.url,
      );

  bool get isLoaded => maybeWhen(
        orElse: () => false,
        loaded: (ticket) => true,
      );

  File? get file => maybeWhen(
        orElse: () => null,
        loaded: (ticket) => File(ticket.path!),
      );
}
