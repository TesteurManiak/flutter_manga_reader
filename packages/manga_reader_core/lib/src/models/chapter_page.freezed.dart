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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChapterPage {
  int get index => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Create a copy of ChapterPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterPageCopyWith<ChapterPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterPageCopyWith<$Res> {
  factory $ChapterPageCopyWith(
          ChapterPage value, $Res Function(ChapterPage) then) =
      _$ChapterPageCopyWithImpl<$Res, ChapterPage>;
  @useResult
  $Res call({int index, String url, String imageUrl});
}

/// @nodoc
class _$ChapterPageCopyWithImpl<$Res, $Val extends ChapterPage>
    implements $ChapterPageCopyWith<$Res> {
  _$ChapterPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? url = null,
    Object? imageUrl = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterPageImplCopyWith<$Res>
    implements $ChapterPageCopyWith<$Res> {
  factory _$$ChapterPageImplCopyWith(
          _$ChapterPageImpl value, $Res Function(_$ChapterPageImpl) then) =
      __$$ChapterPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String url, String imageUrl});
}

/// @nodoc
class __$$ChapterPageImplCopyWithImpl<$Res>
    extends _$ChapterPageCopyWithImpl<$Res, _$ChapterPageImpl>
    implements _$$ChapterPageImplCopyWith<$Res> {
  __$$ChapterPageImplCopyWithImpl(
      _$ChapterPageImpl _value, $Res Function(_$ChapterPageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? url = null,
    Object? imageUrl = null,
  }) {
    return _then(_$ChapterPageImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChapterPageImpl extends _ChapterPage {
  const _$ChapterPageImpl(
      {required this.index, this.url = '', this.imageUrl = ''})
      : super._();

  @override
  final int index;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String imageUrl;

  @override
  String toString() {
    return 'ChapterPage(index: $index, url: $url, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterPageImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, url, imageUrl);

  /// Create a copy of ChapterPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterPageImplCopyWith<_$ChapterPageImpl> get copyWith =>
      __$$ChapterPageImplCopyWithImpl<_$ChapterPageImpl>(this, _$identity);
}

abstract class _ChapterPage extends ChapterPage {
  const factory _ChapterPage(
      {required final int index,
      final String url,
      final String imageUrl}) = _$ChapterPageImpl;
  const _ChapterPage._() : super._();

  @override
  int get index;
  @override
  String get url;
  @override
  String get imageUrl;

  /// Create a copy of ChapterPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterPageImplCopyWith<_$ChapterPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
