part of 'url_bloc.dart';

@freezed
class UrlState with _$UrlState {
  const UrlState._();

  const factory UrlState.correct() = _UrlCorrectState;

  const factory UrlState.validated(String url) = _UrlValidatedState;

  const factory UrlState.incorrect() = _UrlIncorrectState;

  const factory UrlState.successful() = _UrlSuccessfulState;

  bool get isCorrect => when(
        correct: () => true,
        incorrect: () => false,
        successful: () => true,
        validated: (_) => true,
      );

  bool get isSuccessful => when(
        correct: () => false,
        incorrect: () => false,
        successful: () => true,
        validated: (_) => false,
      );

  bool get isValidated => maybeWhen(
        orElse: () => false,
        validated: (_) => true,
      );

  String get url => maybeWhen(
        orElse: () => '',
        validated: (validUrl) => validUrl,
      );
}
