import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
sealed class Result<S, F> with _$Result<S, F> {
  const factory Result.success(S success) = Success<S, F>;
  const factory Result.failure(F failure) = Failure<S, F>;

  const Result._();

  Result<TResult, F> whenSuccess<TResult>(TResult Function(S) onSuccess) {
    return switch (this) {
      Success(:final success) => Result.success(onSuccess(success)),
      Failure(:final failure) => Result.failure(failure),
    };
  }
}

extension ResultDecoder<F> on Result<Object?, F> {
  Result<S, F> decode<S>(S Function(Map<String, dynamic>) decoder) {
    return whenSuccess<S>((s) {
      final Map<String, dynamic> json;
      if (s is String) {
        final decodedJson = jsonDecode(s);
        if (decodedJson is! Map<String, dynamic>) {
          throw InvalidJSONException(decodedJson);
        }
        json = decodedJson;
      } else {
        if (s is! Map<String, dynamic>) {
          throw InvalidJSONException(s);
        }
        json = s;
      }
      return decoder(json);
    });
  }

  Result<List<S>, F> decodeList<S>(S Function(Map<String, dynamic>) decoder) {
    return whenSuccess(
      (s) {
        final List<Object?> json;
        if (s is String) {
          final decodedJson = jsonDecode(s);
          if (decodedJson is! List) {
            throw InvalidJSONException(decodedJson);
          }
          json = decodedJson;
        } else {
          if (s is! List) {
            throw InvalidJSONException(s);
          }
          json = s;
        }

        return json
            .cast<Map<String, dynamic>>()
            .map((json) => decoder(json))
            .toList();
      },
    );
  }
}

extension FutureResultDecoder<F> on Future<Result<Object?, F>> {
  Future<Result<S, F>> decode<S>(
    S Function(Map<String, dynamic>) decoder,
  ) async {
    return (await this).decode(decoder);
  }

  Future<Result<List<S>, F>> decodeList<S>(
    S Function(Map<String, dynamic>) decoder,
  ) async {
    return (await this).decodeList(decoder);
  }
}

class InvalidJSONException extends FormatException {
  const InvalidJSONException([Object? source]) : super('Invalid JSON', source);
}
