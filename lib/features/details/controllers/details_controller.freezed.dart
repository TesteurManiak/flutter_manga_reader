// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsState {
  List<Chapter> get selectedChapters => throw _privateConstructorUsedError;
  bool get selectionMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
  @useResult
  $Res call({List<Chapter> selectedChapters, bool selectionMode});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? selectionMode = null,
  }) {
    return _then(_value.copyWith(
      selectedChapters: null == selectedChapters
          ? _value.selectedChapters
          : selectedChapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      selectionMode: null == selectionMode
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsLoadingImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsLoadingImplCopyWith(_$DetailsLoadingImpl value,
          $Res Function(_$DetailsLoadingImpl) then) =
      __$$DetailsLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chapter> selectedChapters, bool selectionMode});
}

/// @nodoc
class __$$DetailsLoadingImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$DetailsLoadingImpl>
    implements _$$DetailsLoadingImplCopyWith<$Res> {
  __$$DetailsLoadingImplCopyWithImpl(
      _$DetailsLoadingImpl _value, $Res Function(_$DetailsLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? selectionMode = null,
  }) {
    return _then(_$DetailsLoadingImpl(
      selectedChapters: null == selectedChapters
          ? _value._selectedChapters
          : selectedChapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      selectionMode: null == selectionMode
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailsLoadingImpl extends DetailsLoading {
  const _$DetailsLoadingImpl(
      {final List<Chapter> selectedChapters = const <Chapter>[],
      this.selectionMode = false})
      : _selectedChapters = selectedChapters,
        super._();

  final List<Chapter> _selectedChapters;
  @override
  @JsonKey()
  List<Chapter> get selectedChapters {
    if (_selectedChapters is EqualUnmodifiableListView)
      return _selectedChapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedChapters);
  }

  @override
  @JsonKey()
  final bool selectionMode;

  @override
  String toString() {
    return 'DetailsState.loading(selectedChapters: $selectedChapters, selectionMode: $selectionMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsLoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedChapters, _selectedChapters) &&
            (identical(other.selectionMode, selectionMode) ||
                other.selectionMode == selectionMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedChapters), selectionMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsLoadingImplCopyWith<_$DetailsLoadingImpl> get copyWith =>
      __$$DetailsLoadingImplCopyWithImpl<_$DetailsLoadingImpl>(
          this, _$identity);
}

abstract class DetailsLoading extends DetailsState {
  const factory DetailsLoading(
      {final List<Chapter> selectedChapters,
      final bool selectionMode}) = _$DetailsLoadingImpl;
  const DetailsLoading._() : super._();

  @override
  List<Chapter> get selectedChapters;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$DetailsLoadingImplCopyWith<_$DetailsLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailsLoadedImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsLoadedImplCopyWith(
          _$DetailsLoadedImpl value, $Res Function(_$DetailsLoadedImpl) then) =
      __$$DetailsLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chapter> selectedChapters, bool selectionMode});
}

/// @nodoc
class __$$DetailsLoadedImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$DetailsLoadedImpl>
    implements _$$DetailsLoadedImplCopyWith<$Res> {
  __$$DetailsLoadedImplCopyWithImpl(
      _$DetailsLoadedImpl _value, $Res Function(_$DetailsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? selectionMode = null,
  }) {
    return _then(_$DetailsLoadedImpl(
      selectedChapters: null == selectedChapters
          ? _value._selectedChapters
          : selectedChapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      selectionMode: null == selectionMode
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailsLoadedImpl extends DetailsLoaded {
  const _$DetailsLoadedImpl(
      {final List<Chapter> selectedChapters = const <Chapter>[],
      this.selectionMode = false})
      : _selectedChapters = selectedChapters,
        super._();

  final List<Chapter> _selectedChapters;
  @override
  @JsonKey()
  List<Chapter> get selectedChapters {
    if (_selectedChapters is EqualUnmodifiableListView)
      return _selectedChapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedChapters);
  }

  @override
  @JsonKey()
  final bool selectionMode;

  @override
  String toString() {
    return 'DetailsState.loaded(selectedChapters: $selectedChapters, selectionMode: $selectionMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedChapters, _selectedChapters) &&
            (identical(other.selectionMode, selectionMode) ||
                other.selectionMode == selectionMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedChapters), selectionMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsLoadedImplCopyWith<_$DetailsLoadedImpl> get copyWith =>
      __$$DetailsLoadedImplCopyWithImpl<_$DetailsLoadedImpl>(this, _$identity);
}

abstract class DetailsLoaded extends DetailsState {
  const factory DetailsLoaded(
      {final List<Chapter> selectedChapters,
      final bool selectionMode}) = _$DetailsLoadedImpl;
  const DetailsLoaded._() : super._();

  @override
  List<Chapter> get selectedChapters;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$DetailsLoadedImplCopyWith<_$DetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailsErrorImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsErrorImplCopyWith(
          _$DetailsErrorImpl value, $Res Function(_$DetailsErrorImpl) then) =
      __$$DetailsErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Chapter> selectedChapters, String? error, bool selectionMode});
}

/// @nodoc
class __$$DetailsErrorImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$DetailsErrorImpl>
    implements _$$DetailsErrorImplCopyWith<$Res> {
  __$$DetailsErrorImplCopyWithImpl(
      _$DetailsErrorImpl _value, $Res Function(_$DetailsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? error = freezed,
    Object? selectionMode = null,
  }) {
    return _then(_$DetailsErrorImpl(
      selectedChapters: null == selectedChapters
          ? _value._selectedChapters
          : selectedChapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      selectionMode: null == selectionMode
          ? _value.selectionMode
          : selectionMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailsErrorImpl extends DetailsError {
  const _$DetailsErrorImpl(
      {final List<Chapter> selectedChapters = const <Chapter>[],
      this.error,
      this.selectionMode = false})
      : _selectedChapters = selectedChapters,
        super._();

  final List<Chapter> _selectedChapters;
  @override
  @JsonKey()
  List<Chapter> get selectedChapters {
    if (_selectedChapters is EqualUnmodifiableListView)
      return _selectedChapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedChapters);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final bool selectionMode;

  @override
  String toString() {
    return 'DetailsState.error(selectedChapters: $selectedChapters, error: $error, selectionMode: $selectionMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedChapters, _selectedChapters) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.selectionMode, selectionMode) ||
                other.selectionMode == selectionMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedChapters),
      error,
      selectionMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsErrorImplCopyWith<_$DetailsErrorImpl> get copyWith =>
      __$$DetailsErrorImplCopyWithImpl<_$DetailsErrorImpl>(this, _$identity);
}

abstract class DetailsError extends DetailsState {
  const factory DetailsError(
      {final List<Chapter> selectedChapters,
      final String? error,
      final bool selectionMode}) = _$DetailsErrorImpl;
  const DetailsError._() : super._();

  @override
  List<Chapter> get selectedChapters;
  String? get error;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$DetailsErrorImplCopyWith<_$DetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
