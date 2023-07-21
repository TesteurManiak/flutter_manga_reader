part of 'http_client.dart';

sealed class HttpResult<Success, Failure> {
  const factory HttpResult.success(Success value) =
      HttpSuccess<Success, Failure>;
  const factory HttpResult.failure(Failure value) =
      HttpFailure<Success, Failure>;

  const HttpResult._();

  bool get isSuccess {
    return switch (this) {
      HttpSuccess() => true,
      HttpFailure() => false,
    };
  }

  bool get isFailure {
    return switch (this) {
      HttpSuccess() => false,
      HttpFailure() => true,
    };
  }
}

@immutable
class HttpSuccess<Success, Failure> extends HttpResult<Success, Failure> {
  const HttpSuccess(this.value) : super._();

  final Success value;

  @override
  String toString() => 'HttpResult<$Success, $Failure>.success($value)';

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is HttpSuccess &&
            runtimeType == other.runtimeType &&
            value == other.value;
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);
}

@immutable
class HttpFailure<Success, Failure> extends HttpResult<Success, Failure> {
  const HttpFailure(this.value) : super._();

  final Failure value;

  @override
  String toString() => 'HttpResult<$Success, $Failure>.failure($value)';

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is HttpFailure &&
            runtimeType == other.runtimeType &&
            value == other.value;
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);
}
