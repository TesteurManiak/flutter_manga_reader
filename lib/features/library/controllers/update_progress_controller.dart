import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_progress_controller.freezed.dart';
part 'update_progress_controller.g.dart';

@riverpod
class UpdateProgressController extends _$UpdateProgressController {
  @override
  UpdateProgressState build() => const UpdateProgressState.loaded();

  void startProgress() => state = const UpdateProgressState.loading();
  void incrementProgress() {
    state = switch (state) {
      UpdateProgressLoading(:final progress) =>
        UpdateProgressState.loading(progress: progress + 1),
      _ => state,
    };
  }

  void setProgress(int value) {
    state = UpdateProgressState.loading(progress: value);
  }

  void endProgress() => state = const UpdateProgressState.loaded();
}

@riverpod
bool isUpdating(IsUpdatingRef ref) {
  final state = ref.watch(updateProgressControllerProvider);
  return switch (state) {
    UpdateProgressLoading() => true,
    _ => false,
  };
}

@freezed
sealed class UpdateProgressState with _$UpdateProgressState {
  const factory UpdateProgressState.loading({
    @Default(0) int progress,
  }) = UpdateProgressLoading;
  const factory UpdateProgressState.loaded() = UpdateProgressLoaded;

  const UpdateProgressState._();
}
