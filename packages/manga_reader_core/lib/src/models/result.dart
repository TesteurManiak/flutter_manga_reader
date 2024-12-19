import 'dart:async';
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' show parse;

part 'result.freezed.dart';

@Freezed(copyWith: false)
sealed class Result<S, F> with _$Result<S, F> {
  const factory Result.success(S success) = Success<S, F>;
  const factory Result.failure(F failure) = Failure<S, F>;

  const Result._();

  /// {@template result.combine}
  /// Combine this [Result]s with the same failure type into a single one using
  /// the provided [combiner] function.
  /// {@endtemplate}
  Result<TResult, F> combine<TResult, BSuccess>(
    Result<BSuccess, F> other,
    TResult Function(S resultA, BSuccess resultB) combiner,
  ) {
    return switch (this) {
      Success(success: final successA) => switch (other) {
          Success(success: final successB) =>
            Success(combiner(successA, successB)),
          Failure(failure: final failureB) => Failure(failureB),
        },
      Failure(failure: final failureA) => Failure(failureA),
    };
  }

  Result<TResult, F> onSuccess<TResult>(TResult Function(S) onSuccess) {
    return switch (this) {
      Success(:final success) => Success(onSuccess(success)),
      Failure(:final failure) => Failure(failure),
    };
  }

  FutureOr<Result<TResult, F>> onSuccessAsync<TResult>(
    Future<TResult> Function(S) onSuccess,
  ) {
    return switch (this) {
      Success(:final success) => onSuccess(success).then(Success.new),
      Failure(:final failure) => Failure(failure),
    };
  }

  Result<S, TFailure> onFailure<TFailure>(TFailure Function(F) onFailure) {
    return switch (this) {
      Success(:final success) => Success(success),
      Failure(:final failure) => Failure(onFailure(failure)),
    };
  }
}

extension ResultDecoder<F> on Result<Object?, F> {
  Result<S, F> decode<S>(S Function(Map<String, dynamic>) decoder) {
    return onSuccess<S>((s) {
      final Map<String, dynamic> json;
      if (s is String) {
        final decodedJson = jsonDecode(s);
        if (decodedJson is! Map<String, dynamic>) {
          throw InvalidJSONException(decodedJson);
        }
        json = decodedJson;
      } else {
        if (s is! Map<String, dynamic>) throw InvalidJSONException(s);
        json = s;
      }
      return decoder(json);
    });
  }

  Result<List<S>, F> decodeList<S>(S Function(Map<String, dynamic>) decoder) {
    return onSuccess(
      (s) {
        final List<Object?> json;
        if (s is String) {
          final decodedJson = jsonDecode(s);
          if (decodedJson is! List) throw InvalidJSONException(decodedJson);
          json = decodedJson;
        } else {
          if (s is! List) throw InvalidJSONException(s);
          json = s;
        }

        return json
            .cast<Map<String, dynamic>>()
            .map((json) => decoder(json))
            .toList();
      },
    );
  }

  Result<S, F> decodeString<S>(S Function(String) decoder) {
    return onSuccess<S>((s) {
      return switch (s) {
        String() => decoder(s),
        Object() => decoder(s.toString()),
        null => throw const InvalidJSONException(),
      };
    });
  }

  Result<dom.Element, F> decodeHtmlBody() {
    return decodeString(parse).onSuccess((document) {
      if (document.body case final body?) return body;
      throw InvalidHtmlException(document.body);
    });
  }
}

extension FutureResultDecoder<F> on Future<Result<Object?, F>> {
  Future<Result<S, F>> decode<S>(
    S Function(Map<String, dynamic>) decoder,
  ) {
    return then((value) => value.decode(decoder));
  }

  Future<Result<List<S>, F>> decodeList<S>(
    S Function(Map<String, dynamic>) decoder,
  ) {
    return then((value) => value.decodeList(decoder));
  }

  Future<Result<S, F>> decodeString<S>(S Function(String) decoder) {
    return then((value) => value.decodeString(decoder));
  }

  Future<Result<dom.Element, F>> decodeHtmlBody() {
    return then((value) => value.decodeHtmlBody());
  }
}

class InvalidJSONException extends FormatException {
  const InvalidJSONException([Object? source]) : super('Invalid JSON', source);
}

class InvalidHtmlException extends FormatException {
  const InvalidHtmlException([Object? source]) : super('Invalid HTML', source);
}

extension ResultRecord2Extensions<ASuccess, BSuccess, F> on (
  Result<ASuccess, F>,
  Result<BSuccess, F>
) {
  /// {@macro result.combine}
  Result<TResult, F> combine<TResult>(
    TResult Function(ASuccess resultA, BSuccess resultB) combiner,
  ) {
    return $1.combine($2, combiner);
  }
}
