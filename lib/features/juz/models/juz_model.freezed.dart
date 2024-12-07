// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'juz_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JuzModel _$JuzModelFromJson(Map<String, dynamic> json) {
  return _JuzModel.fromJson(json);
}

/// @nodoc
mixin _$JuzModel {
  int get id => throw _privateConstructorUsedError;
  JuzPointModel get start => throw _privateConstructorUsedError;
  JuzPointModel get end => throw _privateConstructorUsedError;

  /// Serializes this JuzModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JuzModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JuzModelCopyWith<JuzModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JuzModelCopyWith<$Res> {
  factory $JuzModelCopyWith(JuzModel value, $Res Function(JuzModel) then) =
      _$JuzModelCopyWithImpl<$Res, JuzModel>;
  @useResult
  $Res call({int id, JuzPointModel start, JuzPointModel end});

  $JuzPointModelCopyWith<$Res> get start;
  $JuzPointModelCopyWith<$Res> get end;
}

/// @nodoc
class _$JuzModelCopyWithImpl<$Res, $Val extends JuzModel>
    implements $JuzModelCopyWith<$Res> {
  _$JuzModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JuzModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as JuzPointModel,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as JuzPointModel,
    ) as $Val);
  }

  /// Create a copy of JuzModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JuzPointModelCopyWith<$Res> get start {
    return $JuzPointModelCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value) as $Val);
    });
  }

  /// Create a copy of JuzModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JuzPointModelCopyWith<$Res> get end {
    return $JuzPointModelCopyWith<$Res>(_value.end, (value) {
      return _then(_value.copyWith(end: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JuzModelImplCopyWith<$Res>
    implements $JuzModelCopyWith<$Res> {
  factory _$$JuzModelImplCopyWith(
          _$JuzModelImpl value, $Res Function(_$JuzModelImpl) then) =
      __$$JuzModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, JuzPointModel start, JuzPointModel end});

  @override
  $JuzPointModelCopyWith<$Res> get start;
  @override
  $JuzPointModelCopyWith<$Res> get end;
}

/// @nodoc
class __$$JuzModelImplCopyWithImpl<$Res>
    extends _$JuzModelCopyWithImpl<$Res, _$JuzModelImpl>
    implements _$$JuzModelImplCopyWith<$Res> {
  __$$JuzModelImplCopyWithImpl(
      _$JuzModelImpl _value, $Res Function(_$JuzModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JuzModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$JuzModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as JuzPointModel,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as JuzPointModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JuzModelImpl implements _JuzModel {
  const _$JuzModelImpl(
      {required this.id, required this.start, required this.end});

  factory _$JuzModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JuzModelImplFromJson(json);

  @override
  final int id;
  @override
  final JuzPointModel start;
  @override
  final JuzPointModel end;

  @override
  String toString() {
    return 'JuzModel(id: $id, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JuzModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, start, end);

  /// Create a copy of JuzModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JuzModelImplCopyWith<_$JuzModelImpl> get copyWith =>
      __$$JuzModelImplCopyWithImpl<_$JuzModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JuzModelImplToJson(
      this,
    );
  }
}

abstract class _JuzModel implements JuzModel {
  const factory _JuzModel(
      {required final int id,
      required final JuzPointModel start,
      required final JuzPointModel end}) = _$JuzModelImpl;

  factory _JuzModel.fromJson(Map<String, dynamic> json) =
      _$JuzModelImpl.fromJson;

  @override
  int get id;
  @override
  JuzPointModel get start;
  @override
  JuzPointModel get end;

  /// Create a copy of JuzModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JuzModelImplCopyWith<_$JuzModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JuzPointModel _$JuzPointModelFromJson(Map<String, dynamic> json) {
  return _JuzPointModel.fromJson(json);
}

/// @nodoc
mixin _$JuzPointModel {
  int get sura => throw _privateConstructorUsedError;
  String get verse => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this JuzPointModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JuzPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JuzPointModelCopyWith<JuzPointModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JuzPointModelCopyWith<$Res> {
  factory $JuzPointModelCopyWith(
          JuzPointModel value, $Res Function(JuzPointModel) then) =
      _$JuzPointModelCopyWithImpl<$Res, JuzPointModel>;
  @useResult
  $Res call({int sura, String verse, String name});
}

/// @nodoc
class _$JuzPointModelCopyWithImpl<$Res, $Val extends JuzPointModel>
    implements $JuzPointModelCopyWith<$Res> {
  _$JuzPointModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JuzPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sura = null,
    Object? verse = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      sura: null == sura
          ? _value.sura
          : sura // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JuzPointModelImplCopyWith<$Res>
    implements $JuzPointModelCopyWith<$Res> {
  factory _$$JuzPointModelImplCopyWith(
          _$JuzPointModelImpl value, $Res Function(_$JuzPointModelImpl) then) =
      __$$JuzPointModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int sura, String verse, String name});
}

/// @nodoc
class __$$JuzPointModelImplCopyWithImpl<$Res>
    extends _$JuzPointModelCopyWithImpl<$Res, _$JuzPointModelImpl>
    implements _$$JuzPointModelImplCopyWith<$Res> {
  __$$JuzPointModelImplCopyWithImpl(
      _$JuzPointModelImpl _value, $Res Function(_$JuzPointModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of JuzPointModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sura = null,
    Object? verse = null,
    Object? name = null,
  }) {
    return _then(_$JuzPointModelImpl(
      sura: null == sura
          ? _value.sura
          : sura // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JuzPointModelImpl implements _JuzPointModel {
  const _$JuzPointModelImpl(
      {required this.sura, required this.verse, required this.name});

  factory _$JuzPointModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$JuzPointModelImplFromJson(json);

  @override
  final int sura;
  @override
  final String verse;
  @override
  final String name;

  @override
  String toString() {
    return 'JuzPointModel(sura: $sura, verse: $verse, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JuzPointModelImpl &&
            (identical(other.sura, sura) || other.sura == sura) &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sura, verse, name);

  /// Create a copy of JuzPointModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JuzPointModelImplCopyWith<_$JuzPointModelImpl> get copyWith =>
      __$$JuzPointModelImplCopyWithImpl<_$JuzPointModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JuzPointModelImplToJson(
      this,
    );
  }
}

abstract class _JuzPointModel implements JuzPointModel {
  const factory _JuzPointModel(
      {required final int sura,
      required final String verse,
      required final String name}) = _$JuzPointModelImpl;

  factory _JuzPointModel.fromJson(Map<String, dynamic> json) =
      _$JuzPointModelImpl.fromJson;

  @override
  int get sura;
  @override
  String get verse;
  @override
  String get name;

  /// Create a copy of JuzPointModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JuzPointModelImplCopyWith<_$JuzPointModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
