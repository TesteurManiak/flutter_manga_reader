import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_progress_controller.freezed.dart';

final updateProgressControllerProvider =
    NotifierProvider.autoDispose<UpdateProgressController, UpdateProgressState>(
      UpdateProgressController.new,
    );

class UpdateProgressController extends Notifier<UpdateProgressState> {
  @override
  UpdateProgressState build() => const UpdateProgressState.loaded();

  void startProgress() => state = const UpdateProgressState.loading();
  void incrementProgress() {
    state = switch (state) {
      UpdateProgressLoading(:final progress) => UpdateProgressState.loading(
        progress: progress + 1,
      ),
      _ => state,
    };
  }

  void setProgress(int value) {
    state = UpdateProgressState.loading(progress: value);
  }

  void endProgress() {
    state = UpdateProgressState.loaded(progress: state.progress);
  }
}

final isUpdatingProvider = Provider.autoDispose<bool>((ref) {
  return ref.watch(
    updateProgressControllerProvider.select((s) => s.isUpdating),
  );
});

@freezed
sealed class UpdateProgressState with _$UpdateProgressState {
  const factory UpdateProgressState.loading({@Default(0) int progress}) =
      UpdateProgressLoading;
  const factory UpdateProgressState.loaded({int? progress}) =
      UpdateProgressLoaded;

  const UpdateProgressState._();

  bool get isUpdating {
    return switch (this) {
      UpdateProgressLoading() => true,
      _ => false,
    };
  }
}
