part of 'ticket_bloc.dart';

@freezed
class TicketEvent with _$TicketEvent {
  const factory TicketEvent.attach(Ticket ticket) = _TicketAttachEvent;

  const factory TicketEvent.load() = _TicketLoadEvent;

  const factory TicketEvent.progressChanged(double current, double max) =
      _TicketProgressChangedEvent;

  const factory TicketEvent.pause() = _TicketPauseEvent;

  const factory TicketEvent.resume() = _TicketResumeEvent;
}
