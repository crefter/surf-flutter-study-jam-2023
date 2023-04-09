import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/model/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repository/ticket_repository.dart';

part 'ticket_event.dart';

part 'ticket_state.dart';

part 'ticket_bloc.freezed.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  final TicketRepository repository;

  TicketBloc({required this.repository}) : super(const TicketState.initial()) {
    on<TicketEvent>((event, emit) async {
      await event.map(
        attach: (event) => _onAttach(event, emit),
        load: (event) => _onLoad(event, emit),
        pause: (event) => _onPause(event, emit),
        resume: (event) => _onResume(event, emit),
        progressChanged: (event) => _onProgressChanged(event, emit),
      );
    });
  }

  Future<void> _onAttach(
    _TicketAttachEvent event,
    Emitter<TicketState> emit,
  ) async {
    if (event.ticket.isLoaded) {
      emit(TicketState.loaded(event.ticket));
    } else {
      emit(TicketState.waiting(event.ticket));
    }
  }

  Future<void> _onLoad(
    _TicketLoadEvent event,
    Emitter<TicketState> emit,
  ) async {
    try {
      await repository.download(
        state.id,
        state.url,
        (current, max) => add(
          TicketEvent.progressChanged(current, max),
        ),
      );
    } catch (e) {
      print('sadsa');
    }
  }

  Future<void> _onPause(
    _TicketPauseEvent event,
    Emitter<TicketState> emit,
  ) async {
  }

  Future<void> _onResume(
    _TicketResumeEvent event,
    Emitter<TicketState> emit,
  ) async {}

  Future<void> _onProgressChanged(
    _TicketProgressChangedEvent event,
    Emitter<TicketState> emit,
  ) async {
    final ticket = state.ticket!;
    emit(TicketState.loading(ticket, event.current, event.max));
    if (event.current == event.max) {
      final path = await repository.getFilePath(ticket.id);
      await repository.update(
        ticket.id,
        ticket.name,
        ticket.url,
        true,
        path,
      );
      emit(
        TicketState.loaded(
          ticket.copyWith(isLoaded: true, path: path),
        ),
      );
    }
  }
}
