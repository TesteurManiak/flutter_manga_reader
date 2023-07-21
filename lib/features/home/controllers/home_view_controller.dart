import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_controller.freezed.dart';
part 'home_view_controller.g.dart';

@riverpod
class HomeViewController extends _$HomeViewController {
  @override
  HomeViewState build() {
    return const HomeViewState();
  }

  void incrementCounter() {
    state = state.copyWith(counter: state.counter + 1);
  }

  void decrementCounter() {
    state = state.copyWith(counter: state.counter - 1);
  }
}

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState({
    @Default(0) int counter,
  }) = _HomeViewState;
}
