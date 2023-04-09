part of 'tickets_bloc.dart';

@freezed
class TicketsState with _$TicketsState {
  const TicketsState._();

  const factory TicketsState.empty() = _TicketsEmptyState;

  const factory TicketsState.loading() = _TicketsLoadingState;

  const factory TicketsState.loaded(List<Ticket> tickets) = _TicketsLoadedState;

  const factory TicketsState.error(String message) = _TicketsErrorState;

  int get length => when<int>(
        empty: () => 0,
        loading: () => 0,
        loaded: (tickets) => tickets.length,
        error: (_) => 0,
      );

  List<Ticket> get tickets => maybeWhen(
        orElse: () => [],
        loaded: (list) => list,
      );
}
