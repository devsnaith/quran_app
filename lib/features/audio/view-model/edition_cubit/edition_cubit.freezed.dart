// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edition_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<EditionModel> editions) editionsFetched,
    required TResult Function(EditionModel edition) editionsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<EditionModel> editions)? editionsFetched,
    TResult? Function(EditionModel edition)? editionsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<EditionModel> editions)? editionsFetched,
    TResult Function(EditionModel edition)? editionsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditionsFetched value) editionsFetched,
    required TResult Function(_EditionSelected value) editionsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EditionsFetched value)? editionsFetched,
    TResult? Function(_EditionSelected value)? editionsSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditionsFetched value)? editionsFetched,
    TResult Function(_EditionSelected value)? editionsSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditionStateCopyWith<$Res> {
  factory $EditionStateCopyWith(
          EditionState value, $Res Function(EditionState) then) =
      _$EditionStateCopyWithImpl<$Res, EditionState>;
}

/// @nodoc
class _$EditionStateCopyWithImpl<$Res, $Val extends EditionState>
    implements $EditionStateCopyWith<$Res> {
  _$EditionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EditionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EditionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<EditionModel> editions) editionsFetched,
    required TResult Function(EditionModel edition) editionsSelected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<EditionModel> editions)? editionsFetched,
    TResult? Function(EditionModel edition)? editionsSelected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<EditionModel> editions)? editionsFetched,
    TResult Function(EditionModel edition)? editionsSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditionsFetched value) editionsFetched,
    required TResult Function(_EditionSelected value) editionsSelected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EditionsFetched value)? editionsFetched,
    TResult? Function(_EditionSelected value)? editionsSelected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditionsFetched value)? editionsFetched,
    TResult Function(_EditionSelected value)? editionsSelected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EditionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EditionsFetchedImplCopyWith<$Res> {
  factory _$$EditionsFetchedImplCopyWith(_$EditionsFetchedImpl value,
          $Res Function(_$EditionsFetchedImpl) then) =
      __$$EditionsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EditionModel> editions});
}

/// @nodoc
class __$$EditionsFetchedImplCopyWithImpl<$Res>
    extends _$EditionStateCopyWithImpl<$Res, _$EditionsFetchedImpl>
    implements _$$EditionsFetchedImplCopyWith<$Res> {
  __$$EditionsFetchedImplCopyWithImpl(
      _$EditionsFetchedImpl _value, $Res Function(_$EditionsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editions = null,
  }) {
    return _then(_$EditionsFetchedImpl(
      null == editions
          ? _value._editions
          : editions // ignore: cast_nullable_to_non_nullable
              as List<EditionModel>,
    ));
  }
}

/// @nodoc

class _$EditionsFetchedImpl implements _EditionsFetched {
  const _$EditionsFetchedImpl(final List<EditionModel> editions)
      : _editions = editions;

  final List<EditionModel> _editions;
  @override
  List<EditionModel> get editions {
    if (_editions is EqualUnmodifiableListView) return _editions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_editions);
  }

  @override
  String toString() {
    return 'EditionState.editionsFetched(editions: $editions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditionsFetchedImpl &&
            const DeepCollectionEquality().equals(other._editions, _editions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_editions));

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditionsFetchedImplCopyWith<_$EditionsFetchedImpl> get copyWith =>
      __$$EditionsFetchedImplCopyWithImpl<_$EditionsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<EditionModel> editions) editionsFetched,
    required TResult Function(EditionModel edition) editionsSelected,
  }) {
    return editionsFetched(editions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<EditionModel> editions)? editionsFetched,
    TResult? Function(EditionModel edition)? editionsSelected,
  }) {
    return editionsFetched?.call(editions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<EditionModel> editions)? editionsFetched,
    TResult Function(EditionModel edition)? editionsSelected,
    required TResult orElse(),
  }) {
    if (editionsFetched != null) {
      return editionsFetched(editions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditionsFetched value) editionsFetched,
    required TResult Function(_EditionSelected value) editionsSelected,
  }) {
    return editionsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EditionsFetched value)? editionsFetched,
    TResult? Function(_EditionSelected value)? editionsSelected,
  }) {
    return editionsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditionsFetched value)? editionsFetched,
    TResult Function(_EditionSelected value)? editionsSelected,
    required TResult orElse(),
  }) {
    if (editionsFetched != null) {
      return editionsFetched(this);
    }
    return orElse();
  }
}

abstract class _EditionsFetched implements EditionState {
  const factory _EditionsFetched(final List<EditionModel> editions) =
      _$EditionsFetchedImpl;

  List<EditionModel> get editions;

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditionsFetchedImplCopyWith<_$EditionsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditionSelectedImplCopyWith<$Res> {
  factory _$$EditionSelectedImplCopyWith(_$EditionSelectedImpl value,
          $Res Function(_$EditionSelectedImpl) then) =
      __$$EditionSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditionModel edition});

  $EditionModelCopyWith<$Res> get edition;
}

/// @nodoc
class __$$EditionSelectedImplCopyWithImpl<$Res>
    extends _$EditionStateCopyWithImpl<$Res, _$EditionSelectedImpl>
    implements _$$EditionSelectedImplCopyWith<$Res> {
  __$$EditionSelectedImplCopyWithImpl(
      _$EditionSelectedImpl _value, $Res Function(_$EditionSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edition = null,
  }) {
    return _then(_$EditionSelectedImpl(
      null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as EditionModel,
    ));
  }

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EditionModelCopyWith<$Res> get edition {
    return $EditionModelCopyWith<$Res>(_value.edition, (value) {
      return _then(_value.copyWith(edition: value));
    });
  }
}

/// @nodoc

class _$EditionSelectedImpl implements _EditionSelected {
  const _$EditionSelectedImpl(this.edition);

  @override
  final EditionModel edition;

  @override
  String toString() {
    return 'EditionState.editionsSelected(edition: $edition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditionSelectedImpl &&
            (identical(other.edition, edition) || other.edition == edition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, edition);

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditionSelectedImplCopyWith<_$EditionSelectedImpl> get copyWith =>
      __$$EditionSelectedImplCopyWithImpl<_$EditionSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<EditionModel> editions) editionsFetched,
    required TResult Function(EditionModel edition) editionsSelected,
  }) {
    return editionsSelected(edition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<EditionModel> editions)? editionsFetched,
    TResult? Function(EditionModel edition)? editionsSelected,
  }) {
    return editionsSelected?.call(edition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<EditionModel> editions)? editionsFetched,
    TResult Function(EditionModel edition)? editionsSelected,
    required TResult orElse(),
  }) {
    if (editionsSelected != null) {
      return editionsSelected(edition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EditionsFetched value) editionsFetched,
    required TResult Function(_EditionSelected value) editionsSelected,
  }) {
    return editionsSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EditionsFetched value)? editionsFetched,
    TResult? Function(_EditionSelected value)? editionsSelected,
  }) {
    return editionsSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EditionsFetched value)? editionsFetched,
    TResult Function(_EditionSelected value)? editionsSelected,
    required TResult orElse(),
  }) {
    if (editionsSelected != null) {
      return editionsSelected(this);
    }
    return orElse();
  }
}

abstract class _EditionSelected implements EditionState {
  const factory _EditionSelected(final EditionModel edition) =
      _$EditionSelectedImpl;

  EditionModel get edition;

  /// Create a copy of EditionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditionSelectedImplCopyWith<_$EditionSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
