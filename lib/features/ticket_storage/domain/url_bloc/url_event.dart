part of 'url_bloc.dart';

@freezed
class UrlEvent with _$UrlEvent {
  const factory UrlEvent.validate(String url, bool fromClipboard) =
      _UrlValidateEvent;

  const factory UrlEvent.add(String url) = _UrlAddEvent;

  const factory UrlEvent.change() = _UrlChangeEvent;
}
