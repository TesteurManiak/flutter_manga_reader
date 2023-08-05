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
abstract class _$$_LoadingCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chapter> selectedChapters, bool selectionMode});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? selectionMode = null,
  }) {
    return _then(_$_Loading(
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

class _$_Loading extends _Loading {
  const _$_Loading(
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
            other is _$_Loading &&
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
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

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
      final bool selectionMode}) = _$_Loading;
  const _Loading._() : super._();

  @override
  List<Chapter> get selectedChapters;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Chapter> selectedChapters, bool selectionMode});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? selectionMode = null,
  }) {
    return _then(_$_Loaded(
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

class _$_Loaded extends _Loaded {
  const _$_Loaded(
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
            other is _$_Loaded &&
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
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

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
      final bool selectionMode}) = _$_Loaded;
  const _Loaded._() : super._();

  @override
  List<Chapter> get selectedChapters;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Chapter> selectedChapters, String? error, bool selectionMode});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChapters = null,
    Object? error = freezed,
    Object? selectionMode = null,
  }) {
    return _then(_$_Error(
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

class _$_Error extends _Error {
  const _$_Error(
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
            other is _$_Error &&
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
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

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
      final bool selectionMode}) = _$_Error;
  const _Error._() : super._();

  @override
  List<Chapter> get selectedChapters;
  String? get error;
  @override
  bool get selectionMode;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
