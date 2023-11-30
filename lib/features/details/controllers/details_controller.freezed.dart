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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsState {
  List<Chapter> get selectedChapters => throw _privateConstructorUsedError;
  bool get selectionMode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loading,
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loaded,
    required TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult? Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
abstract class _$$LoadingImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chapter> selectedChapters, bool selectionMode});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? selectionMode = null,
  }) {
    return _then(_$LoadingImpl(
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

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
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
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loading,
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loaded,
    required TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)
        error,
  }) {
    return loading(selectedChapters, selectionMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult? Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
  }) {
    return loading?.call(selectedChapters, selectionMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedChapters, selectionMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends DetailsState {
  const factory _Loading(
      {final List<Chapter> selectedChapters,
      final bool selectionMode}) = _$LoadingImpl;
  const _Loading._() : super._();

  @override
  List<Chapter> get selectedChapters;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chapter> selectedChapters, bool selectionMode});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? selectionMode = null,
  }) {
    return _then(_$LoadedImpl(
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

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
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
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loading,
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loaded,
    required TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)
        error,
  }) {
    return loaded(selectedChapters, selectionMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult? Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
  }) {
    return loaded?.call(selectedChapters, selectionMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(selectedChapters, selectionMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends DetailsState {
  const factory _Loaded(
      {final List<Chapter> selectedChapters,
      final bool selectionMode}) = _$LoadedImpl;
  const _Loaded._() : super._();

  @override
  List<Chapter> get selectedChapters;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Chapter> selectedChapters, String? error, bool selectionMode});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? error = freezed,
    Object? selectionMode = null,
  }) {
    return _then(_$ErrorImpl(
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

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
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
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loading,
    required TResult Function(
            List<Chapter> selectedChapters, bool selectionMode)
        loaded,
    required TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)
        error,
  }) {
    return error(selectedChapters, this.error, selectionMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult? Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult? Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
  }) {
    return error?.call(selectedChapters, this.error, selectionMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loading,
    TResult Function(List<Chapter> selectedChapters, bool selectionMode)?
        loaded,
    TResult Function(
            List<Chapter> selectedChapters, String? error, bool selectionMode)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(selectedChapters, this.error, selectionMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends DetailsState {
  const factory _Error(
      {final List<Chapter> selectedChapters,
      final String? error,
      final bool selectionMode}) = _$ErrorImpl;
  const _Error._() : super._();

  @override
  List<Chapter> get selectedChapters;
  String? get error;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
