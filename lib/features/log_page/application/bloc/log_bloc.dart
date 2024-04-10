import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/failures/log_failure.dart';
import 'package:rolla_zadatak/features/log_page/domain/entities/log/log.dart';
import 'package:rolla_zadatak/features/log_page/domain/repositories/log_repository_interface.dart';
import 'package:rolla_zadatak/features/log_page/infrastructure/log_repository.dart';

part 'log_event.dart';
part 'log_state.dart';
part 'log_bloc.freezed.dart';

class LogBloc extends Bloc<LogEvent, LogState> {
  final ILogRepositoryInterface logRepository = LogRepository();
  LogBloc() : super(_Initial()) {
    on<GetLogs>((event, emit) async {
      // TODO: implement event handler
      var result = await logRepository.getLogs();

      result.fold((l) {
        emit(LogState.error(failure: LogFailure.logError()));
      }, (r) {
        emit(LogState.loaded(logs: r));
      });
    });
  }
}
