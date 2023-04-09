import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/model/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repository/ticket_repository.dart';

part 'tickets_event.dart';

part 'tickets_state.dart';

part 'tickets_bloc.freezed.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  final TicketRepository ticketRepository;

  TicketsBloc({required this.ticketRepository})
      : super(const TicketsState.empty()) {
    on<TicketsEvent>((event, emit) async {
      await event.map(
        get: (event) => _onGet(event, emit),
        save: (event) => _onSave(event, emit),
        add: (event) => _onAdd(event, emit),
        delete: (event) => _onDelete(event, emit),
        sortByDateAndState: (event) => _onSortByDateAndState(event, emit),
      );
    });
  }

  Future<void> _onGet(
    _TicketsGetEvent event,
    Emitter<TicketsState> emit,
  ) async {
    emit(const TicketsState.loading());
    try {
      final tickets = await ticketRepository.getAll();
      if (tickets.isEmpty) {
        emit(const TicketsState.empty());
      } else {
        emit(TicketsState.loaded(tickets));
      }
    } catch (e) {
      emit(TicketsState.error(e.toString()));
    }
  }

  Future<void> _onSave(
    _TicketsSaveEvent event,
    Emitter<TicketsState> emit,
  ) async {
    await ticketRepository.save(event.ticket);
  }

  Future<void> _onAdd(
    _TicketsAddEvent event,
    Emitter<TicketsState> emit,
  ) async {
    final id = Random(DateTime.now().millisecondsSinceEpoch).nextInt(999999999);
    final last = Uri.parse(event.url).pathSegments.last;
    final name = last.substring(0, last.length - 4);
    final ticket = Ticket(
      id,
      name,
      event.url,
      false,
      null
    );
    final list = List.of(state.tickets);
    list.add(ticket);
    emit(TicketsState.loaded(list));
    add(TicketsEvent.save(ticket));
  }

  Future<void> _onDelete(
    _TicketsDeleteEvent event,
    Emitter<TicketsState> emit,
  ) async {
    final list = await ticketRepository.getAll();
    list.removeWhere((element) => element.id == event.ticket.id);
    if (event.ticket.isLoaded) {
      final String path = await ticketRepository.getFilePath(event.ticket.id);
      final File file = File(path);
      await file.delete();
    }
    await ticketRepository.delete(event.ticket.id);
    if (list.isEmpty) {
      emit(const TicketsState.empty());
    } else {
      emit(TicketsState.loaded(list));
    }
  }

  Future<void> _onSortByDateAndState(
    _TicketsSortByDateAndStateEvent event,
    Emitter<TicketsState> emit,
  ) async {
    final list = await ticketRepository.getSortedByDateAndState();
    if (list.isEmpty) {
      emit(const TicketsState.empty());
    } else {
      emit(TicketsState.loaded(list));
    }
  }
}
