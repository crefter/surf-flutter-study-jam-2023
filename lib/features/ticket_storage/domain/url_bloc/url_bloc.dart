import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_event.dart';

part 'url_state.dart';

part 'url_bloc.freezed.dart';

class UrlBloc extends Bloc<UrlEvent, UrlState> {
  UrlBloc() : super(const UrlState.correct()) {
    on<UrlEvent>((event, emit) async {
      await event.map(
        validate: (event) => _onValidate(event, emit),
        add: (event) => _onAdd(event, emit),
        change: (event) => _onChange(event, emit),
      );
    });
  }

  Future<void> _onValidate(
    _UrlValidateEvent event,
    Emitter<UrlState> emit,
  ) async {
    final isUrl = Uri.tryParse(event.url)?.hasAbsolutePath ?? false;
    if (event.fromClipboard) {
      if (isUrl && event.url.endsWith('.pdf')) {
        emit(UrlState.validated(event.url));
        return;
      }
    } else {
      if (isUrl && event.url.endsWith('.pdf')) {
        emit(UrlState.validated(event.url));
      } else {
        emit(const UrlState.incorrect());
      }
    }
  }

  Future<void> _onAdd(
    _UrlAddEvent event,
    Emitter<UrlState> emit,
  ) async {
    add(UrlEvent.validate(event.url, false));
    if (state.isValidated) {
      emit(const UrlState.successful());
    }
  }

  Future<void> _onChange(
    _UrlChangeEvent event,
    Emitter<UrlState> emit,
  ) async {
    emit(const UrlState.correct());
  }
}
