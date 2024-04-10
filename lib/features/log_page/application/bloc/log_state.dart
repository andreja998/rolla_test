part of 'log_bloc.dart';

@freezed
class LogState with _$LogState {
  const factory LogState.initial() = _Initial;
  const factory LogState.loaded({ required List<Log> logs}) = _Loaded;
  const factory LogState.error({ required LogFailure failure}) = _Error;
}
