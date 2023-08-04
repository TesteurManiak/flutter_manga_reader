// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChapterPage {
  int get index => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterPageCopyWith<ChapterPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterPageCopyWith<$Res> {
  factory $ChapterPageCopyWith(
          ChapterPage value, $Res Function(ChapterPage) then) =
      _$ChapterPageCopyWithImpl<$Res, ChapterPage>;
  @useResult
  $Res call({int index, String url, String? imageUrl});
}

/// @nodoc
class _$ChapterPageCopyWithImpl<$Res, $Val extends ChapterPage>
    implements $ChapterPageCopyWith<$Res> {
  _$ChapterPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? url = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterPageCopyWith<$Res>
    implements $ChapterPageCopyWith<$Res> {
  factory _$$_ChapterPageCopyWith(
          _$_ChapterPage value, $Res Function(_$_ChapterPage) then) =
      __$$_ChapterPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String url, String? imageUrl});
}

/// @nodoc
class __$$_ChapterPageCopyWithImpl<$Res>
    extends _$ChapterPageCopyWithImpl<$Res, _$_ChapterPage>
    implements _$$_ChapterPageCopyWith<$Res> {
  __$$_ChapterPageCopyWithImpl(
      _$_ChapterPage _value, $Res Function(_$_ChapterPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? url = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_ChapterPage(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChapterPage extends _ChapterPage {
  const _$_ChapterPage({required this.index, this.url = '', this.imageUrl})
      : super._();

  @override
  final int index;
  @override
  @JsonKey()
  final String url;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'ChapterPage(index: $index, url: $url, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterPage &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, url, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterPageCopyWith<_$_ChapterPage> get copyWith =>
      __$$_ChapterPageCopyWithImpl<_$_ChapterPage>(this, _$identity);
}

abstract class _ChapterPage extends ChapterPage {
  const factory _ChapterPage(
      {required final int index,
      final String url,
      final String? imageUrl}) = _$_ChapterPage;
  const _ChapterPage._() : super._();

  @override
  int get index;
  @override
  String get url;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterPageCopyWith<_$_ChapterPage> get copyWith =>
      throw _privateConstructorUsedError;
}
