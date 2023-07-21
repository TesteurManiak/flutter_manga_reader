import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<S, F> with _$Result<S, F> {
  const factory Result.success(S success) = Success<S, F>;
  const factory Result.failure(F failure) = Failure<S, F>;

  const Result._();

  bool get isSuccess {
    return when(
      success: (_) => true,
      failure: (_) => false,
    );
  }

  bool get isFailure {
    return when(
      success: (_) => false,
      failure: (_) => true,
    );
  }

  S? get successOrNull {
    return when(
      success: (success) => success,
      failure: (_) => null,
    );
  }

  F? get failureOrNull {
    return when(
      success: (_) => null,
      failure: (failure) => failure,
    );
  }
}
