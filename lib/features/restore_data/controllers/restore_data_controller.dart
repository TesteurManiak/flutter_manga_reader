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
}

@freezed
class RestoreDataState with _$RestoreDataState {
  const factory RestoreDataState.initial() = _Initial;
  const factory RestoreDataState.loading() = _Loading;
  const factory RestoreDataState.loaded() = _Loaded;
  const factory RestoreDataState.error() = _Error;

  const RestoreDataState._();
}
