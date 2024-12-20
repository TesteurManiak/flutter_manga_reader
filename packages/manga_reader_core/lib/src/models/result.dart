import 'dart:async';
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' show parse;
import 'package:manga_reader_core/src/exceptions/format_exceptions.dart';

part 'result.freezed.dart';

@Freezed(copyWith: false)
sealed class Result<S, F> with _$Result<S, F> {
  const factory Result.success(S success) = Success<S, F>;
  const factory Result.failure(F failure) = Failure<S, F>;

  const Result._();

  /// {@template result.when_success}
  /// Used to convert a [Success]'s value to another type.
  /// {@endtemplate}
  Result<TResult, F> whenSuccess<TResult>(TResult Function(S value) cb) {
    return switch (this) {
      Success(:final success) => Success(cb(success)),
      Failure(:final failure) => Failure(failure),
    };
  }

  /// {@template result.when_failure}
  /// Used to convert a [Failure]'s value to another type.
  /// {@endtemplate}
  Result<S, TFailure> whenFailure<TFailure>(TFailure Function(F) cb) {
    return switch (this) {
      Success(:final success) => Success(success),
      Failure(:final failure) => Failure(cb(failure)),
    };
  }
}

extension ResultDecoderX<F> on Result<Object?, F> {
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
        if (s is! Map<String, dynamic>) throw InvalidJSONException(s);
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
    return whenSuccess<S>((s) {
      return switch (s) {
        String() => decoder(s),
        Object() => decoder(s.toString()),
        null => throw const InvalidJSONException(),
      };
    });
  }

  Result<dom.Element, F> decodeHtmlBody() {
    return decodeString(parse).whenSuccess((document) {
      if (document.body case final body?) return body;
      throw InvalidHtmlException(document.body);
    });
  }
}

extension ResultX<S, F> on Result<S, F> {
  /// {@template result.combine}
  /// Combine two [Result]s with the same failure type into a single one using
  /// the provided [combiner] function.
  /// {@endtemplate}
  Result<TResult, F> combine<TResult, BSuccess>(
    Result<BSuccess, F> other,
    TResult Function(S resultA, BSuccess resultB) combiner,
  ) {
    return switch ((this, other)) {
      (Success(success: final successA), Success(success: final successB)) =>
        Success(combiner(successA, successB)),
      (Failure(failure: final failure), _) => Failure(failure),
      (_, Failure(failure: final failure)) => Failure(failure),
    };
  }
}

extension FutureResultDecoderX<F> on Future<Result<Object?, F>> {
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

extension FutureResultX<S, F> on Future<Result<S, F>> {
  /// {@macro result.when_success}
  Future<Result<TResult, F>> whenSuccess<TResult>(
    FutureOr<TResult> Function(S value) cb,
  ) {
    return then((result) async {
      return switch (result) {
        Success(success: final success) => Success(await cb(success)),
        Failure(failure: final failure) => Failure(failure),
      };
    });
  }

  /// {@macro result.when_failure}
  Future<Result<S, TFailure>> whenFailure<TFailure>(
    TFailure Function(F value) cb,
  ) {
    return then((result) {
      return switch (result) {
        Success(success: final success) => Success(success),
        Failure(failure: final failure) => Failure(cb(failure)),
      };
    });
  }
}

extension ResultRecord2X<ASuccess, BSuccess, F> on (
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
