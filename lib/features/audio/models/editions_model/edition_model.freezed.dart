// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditionModel _$EditionModelFromJson(Map<String, dynamic> json) {
  return _EditionModel.fromJson(json);
}

/// @nodoc
mixin _$EditionModel {
  String get identifier => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get bitrate => throw _privateConstructorUsedError;

  /// Serializes this EditionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditionModelCopyWith<EditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditionModelCopyWith<$Res> {
  factory $EditionModelCopyWith(
          EditionModel value, $Res Function(EditionModel) then) =
      _$EditionModelCopyWithImpl<$Res, EditionModel>;
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      String englishName,
      String format,
      String type,
      String bitrate});
}

/// @nodoc
class _$EditionModelCopyWithImpl<$Res, $Val extends EditionModel>
    implements $EditionModelCopyWith<$Res> {
  _$EditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
    Object? bitrate = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditionModelImplCopyWith<$Res>
    implements $EditionModelCopyWith<$Res> {
  factory _$$EditionModelImplCopyWith(
          _$EditionModelImpl value, $Res Function(_$EditionModelImpl) then) =
      __$$EditionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      String englishName,
      String format,
      String type,
      String bitrate});
}

/// @nodoc
class __$$EditionModelImplCopyWithImpl<$Res>
    extends _$EditionModelCopyWithImpl<$Res, _$EditionModelImpl>
    implements _$$EditionModelImplCopyWith<$Res> {
  __$$EditionModelImplCopyWithImpl(
      _$EditionModelImpl _value, $Res Function(_$EditionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
    Object? bitrate = null,
  }) {
    return _then(_$EditionModelImpl(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bitrate: null == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditionModelImpl implements _EditionModel {
  const _$EditionModelImpl(
      {required this.identifier,
      required this.language,
      required this.name,
      required this.englishName,
      required this.format,
      required this.type,
      required this.bitrate});

  factory _$EditionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditionModelImplFromJson(json);

  @override
  final String identifier;
  @override
  final String language;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String format;
  @override
  final String type;
  @override
  final String bitrate;

  @override
  String toString() {
    return 'EditionModel(identifier: $identifier, language: $language, name: $name, englishName: $englishName, format: $format, type: $type, bitrate: $bitrate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditionModelImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, identifier, language, name,
      englishName, format, type, bitrate);

  /// Create a copy of EditionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditionModelImplCopyWith<_$EditionModelImpl> get copyWith =>
      __$$EditionModelImplCopyWithImpl<_$EditionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditionModelImplToJson(
      this,
    );
  }
}

abstract class _EditionModel implements EditionModel {
  const factory _EditionModel(
      {required final String identifier,
      required final String language,
      required final String name,
      required final String englishName,
      required final String format,
      required final String type,
      required final String bitrate}) = _$EditionModelImpl;

  factory _EditionModel.fromJson(Map<String, dynamic> json) =
      _$EditionModelImpl.fromJson;

  @override
  String get identifier;
  @override
  String get language;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get format;
  @override
  String get type;
  @override
  String get bitrate;

  /// Create a copy of EditionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditionModelImplCopyWith<_$EditionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
