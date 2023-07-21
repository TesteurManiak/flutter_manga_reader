import 'package:flutter_manga_reader/features/restore_data/use_cases/pick_backup_file.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'restore_data_controller.freezed.dart';
part 'restore_data_controller.g.dart';

@riverpod
class RestoreDataController extends _$RestoreDataController {
  @override
  RestoreDataState build() {
    return const RestoreDataState.initial();
  }

  Future<void> pickBackupFile() async {
    state = const RestoreDataState.loading();

    final result = await ref.read(pickBackupFileProvider.future);

    state = result.when(
      success: (file) => const RestoreDataState.loaded(),
      failure: (error) => RestoreDataState.error(message: error.toString()),
    );
  }
}

@freezed
class RestoreDataState with _$RestoreDataState {
  const factory RestoreDataState.initial() = _Initial;
  const factory RestoreDataState.loading() = _Loading;
  const factory RestoreDataState.loaded() = _Loaded;
  const factory RestoreDataState.error({required String message}) = _Error;

  const RestoreDataState._();

  bool get isLoading {
    return maybeWhen(
      loading: () => true,
      orElse: () => false,
    );
  }
}
