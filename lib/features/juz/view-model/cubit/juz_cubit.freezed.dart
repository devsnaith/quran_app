// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'juz_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JuzState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(JuzModel model) juzSelected,
    required TResult Function(List<JuzModel> juzList) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(JuzModel model)? juzSelected,
    TResult? Function(List<JuzModel> juzList)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(JuzModel model)? juzSelected,
    TResult Function(List<JuzModel> juzList)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_JuzSelected value) juzSelected,
    required TResult Function(_Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_JuzSelected value)? juzSelected,
    TResult? Function(_Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_JuzSelected value)? juzSelected,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JuzStateCopyWith<$Res> {
  factory $JuzStateCopyWith(JuzState value, $Res Function(JuzState) then) =
      _$JuzStateCopyWithImpl<$Res, JuzState>;
}

/// @nodoc
class _$JuzStateCopyWithImpl<$Res, $Val extends JuzState>
    implements $JuzStateCopyWith<$Res> {
  _$JuzStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JuzState
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
    extends _$JuzStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'JuzState.initial()';
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
    required TResult Function() fetching,
    required TResult Function(JuzModel model) juzSelected,
    required TResult Function(List<JuzModel> juzList) fetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(JuzModel model)? juzSelected,
    TResult? Function(List<JuzModel> juzList)? fetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(JuzModel model)? juzSelected,
    TResult Function(List<JuzModel> juzList)? fetched,
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
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_JuzSelected value) juzSelected,
    required TResult Function(_Fetched value) fetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_JuzSelected value)? juzSelected,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_JuzSelected value)? juzSelected,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JuzState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchingImplCopyWith<$Res> {
  factory _$$FetchingImplCopyWith(
          _$FetchingImpl value, $Res Function(_$FetchingImpl) then) =
      __$$FetchingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingImplCopyWithImpl<$Res>
    extends _$JuzStateCopyWithImpl<$Res, _$FetchingImpl>
    implements _$$FetchingImplCopyWith<$Res> {
  __$$FetchingImplCopyWithImpl(
      _$FetchingImpl _value, $Res Function(_$FetchingImpl) _then)
      : super(_value, _then);

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchingImpl implements _Fetching {
  const _$FetchingImpl();

  @override
  String toString() {
    return 'JuzState.fetching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(JuzModel model) juzSelected,
    required TResult Function(List<JuzModel> juzList) fetched,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(JuzModel model)? juzSelected,
    TResult? Function(List<JuzModel> juzList)? fetched,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(JuzModel model)? juzSelected,
    TResult Function(List<JuzModel> juzList)? fetched,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_JuzSelected value) juzSelected,
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_JuzSelected value)? juzSelected,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_JuzSelected value)? juzSelected,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _Fetching implements JuzState {
  const factory _Fetching() = _$FetchingImpl;
}

/// @nodoc
abstract class _$$JuzSelectedImplCopyWith<$Res> {
  factory _$$JuzSelectedImplCopyWith(
          _$JuzSelectedImpl value, $Res Function(_$JuzSelectedImpl) then) =
      __$$JuzSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JuzModel model});

  $JuzModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$JuzSelectedImplCopyWithImpl<$Res>
    extends _$JuzStateCopyWithImpl<$Res, _$JuzSelectedImpl>
    implements _$$JuzSelectedImplCopyWith<$Res> {
  __$$JuzSelectedImplCopyWithImpl(
      _$JuzSelectedImpl _value, $Res Function(_$JuzSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$JuzSelectedImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as JuzModel,
    ));
  }

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JuzModelCopyWith<$Res> get model {
    return $JuzModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$JuzSelectedImpl implements _JuzSelected {
  const _$JuzSelectedImpl(this.model);

  @override
  final JuzModel model;

  @override
  String toString() {
    return 'JuzState.juzSelected(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JuzSelectedImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JuzSelectedImplCopyWith<_$JuzSelectedImpl> get copyWith =>
      __$$JuzSelectedImplCopyWithImpl<_$JuzSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(JuzModel model) juzSelected,
    required TResult Function(List<JuzModel> juzList) fetched,
  }) {
    return juzSelected(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(JuzModel model)? juzSelected,
    TResult? Function(List<JuzModel> juzList)? fetched,
  }) {
    return juzSelected?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(JuzModel model)? juzSelected,
    TResult Function(List<JuzModel> juzList)? fetched,
    required TResult orElse(),
  }) {
    if (juzSelected != null) {
      return juzSelected(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_JuzSelected value) juzSelected,
    required TResult Function(_Fetched value) fetched,
  }) {
    return juzSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_JuzSelected value)? juzSelected,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return juzSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_JuzSelected value)? juzSelected,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (juzSelected != null) {
      return juzSelected(this);
    }
    return orElse();
  }
}

abstract class _JuzSelected implements JuzState {
  const factory _JuzSelected(final JuzModel model) = _$JuzSelectedImpl;

  JuzModel get model;

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JuzSelectedImplCopyWith<_$JuzSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JuzModel> juzList});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$JuzStateCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? juzList = null,
  }) {
    return _then(_$FetchedImpl(
      null == juzList
          ? _value._juzList
          : juzList // ignore: cast_nullable_to_non_nullable
              as List<JuzModel>,
    ));
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl(final List<JuzModel> juzList) : _juzList = juzList;

  final List<JuzModel> _juzList;
  @override
  List<JuzModel> get juzList {
    if (_juzList is EqualUnmodifiableListView) return _juzList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_juzList);
  }

  @override
  String toString() {
    return 'JuzState.fetched(juzList: $juzList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            const DeepCollectionEquality().equals(other._juzList, _juzList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_juzList));

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(JuzModel model) juzSelected,
    required TResult Function(List<JuzModel> juzList) fetched,
  }) {
    return fetched(juzList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(JuzModel model)? juzSelected,
    TResult? Function(List<JuzModel> juzList)? fetched,
  }) {
    return fetched?.call(juzList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(JuzModel model)? juzSelected,
    TResult Function(List<JuzModel> juzList)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(juzList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Fetching value) fetching,
    required TResult Function(_JuzSelected value) juzSelected,
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Fetching value)? fetching,
    TResult? Function(_JuzSelected value)? juzSelected,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Fetching value)? fetching,
    TResult Function(_JuzSelected value)? juzSelected,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements JuzState {
  const factory _Fetched(final List<JuzModel> juzList) = _$FetchedImpl;

  List<JuzModel> get juzList;

  /// Create a copy of JuzState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
