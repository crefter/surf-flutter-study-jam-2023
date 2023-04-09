part of 'tickets_bloc.dart';

@freezed
class TicketsEvent with _$TicketsEvent {
  const factory TicketsEvent.get() = _TicketsGetEvent;

  const factory TicketsEvent.save(Ticket ticket) = _TicketsSaveEvent;

  const factory TicketsEvent.add(String url) = _TicketsAddEvent;

  const factory TicketsEvent.delete(Ticket ticket) = _TicketsDeleteEvent;

  const factory TicketsEvent.sortByDateAndState() =
      _TicketsSortByDateAndStateEvent;
}
