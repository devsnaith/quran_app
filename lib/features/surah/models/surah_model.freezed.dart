// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SurahModel _$SurahModelFromJson(Map<String, dynamic> json) {
  return _SurahModel.fromJson(json);
}

/// @nodoc
mixin _$SurahModel {
  String get place => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get titleAr => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  List<SurahJuzModel> get juz => throw _privateConstructorUsedError;

  /// Serializes this SurahModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahModelCopyWith<SurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahModelCopyWith<$Res> {
  factory $SurahModelCopyWith(
          SurahModel value, $Res Function(SurahModel) then) =
      _$SurahModelCopyWithImpl<$Res, SurahModel>;
  @useResult
  $Res call(
      {String place,
      String type,
      int count,
      String title,
      String titleAr,
      int index,
      int pages,
      List<SurahJuzModel> juz});
}

/// @nodoc
class _$SurahModelCopyWithImpl<$Res, $Val extends SurahModel>
    implements $SurahModelCopyWith<$Res> {
  _$SurahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? type = null,
    Object? count = null,
    Object? title = null,
    Object? titleAr = null,
    Object? index = null,
    Object? pages = null,
    Object? juz = null,
  }) {
    return _then(_value.copyWith(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: null == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      juz: null == juz
          ? _value.juz
          : juz // ignore: cast_nullable_to_non_nullable
              as List<SurahJuzModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahModelImplCopyWith<$Res>
    implements $SurahModelCopyWith<$Res> {
  factory _$$SurahModelImplCopyWith(
          _$SurahModelImpl value, $Res Function(_$SurahModelImpl) then) =
      __$$SurahModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String place,
      String type,
      int count,
      String title,
      String titleAr,
      int index,
      int pages,
      List<SurahJuzModel> juz});
}

/// @nodoc
class __$$SurahModelImplCopyWithImpl<$Res>
    extends _$SurahModelCopyWithImpl<$Res, _$SurahModelImpl>
    implements _$$SurahModelImplCopyWith<$Res> {
  __$$SurahModelImplCopyWithImpl(
      _$SurahModelImpl _value, $Res Function(_$SurahModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? type = null,
    Object? count = null,
    Object? title = null,
    Object? titleAr = null,
    Object? index = null,
    Object? pages = null,
    Object? juz = null,
  }) {
    return _then(_$SurahModelImpl(
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      titleAr: null == titleAr
          ? _value.titleAr
          : titleAr // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      juz: null == juz
          ? _value._juz
          : juz // ignore: cast_nullable_to_non_nullable
              as List<SurahJuzModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahModelImpl implements _SurahModel {
  const _$SurahModelImpl(
      {required this.place,
      required this.type,
      required this.count,
      required this.title,
      required this.titleAr,
      required this.index,
      required this.pages,
      required final List<SurahJuzModel> juz})
      : _juz = juz;

  factory _$SurahModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahModelImplFromJson(json);

  @override
  final String place;
  @override
  final String type;
  @override
  final int count;
  @override
  final String title;
  @override
  final String titleAr;
  @override
  final int index;
  @override
  final int pages;
  final List<SurahJuzModel> _juz;
  @override
  List<SurahJuzModel> get juz {
    if (_juz is EqualUnmodifiableListView) return _juz;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_juz);
  }

  @override
  String toString() {
    return 'SurahModel(place: $place, type: $type, count: $count, title: $title, titleAr: $titleAr, index: $index, pages: $pages, juz: $juz)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahModelImpl &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleAr, titleAr) || other.titleAr == titleAr) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._juz, _juz));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, place, type, count, title,
      titleAr, index, pages, const DeepCollectionEquality().hash(_juz));

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahModelImplCopyWith<_$SurahModelImpl> get copyWith =>
      __$$SurahModelImplCopyWithImpl<_$SurahModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahModelImplToJson(
      this,
    );
  }
}

abstract class _SurahModel implements SurahModel {
  const factory _SurahModel(
      {required final String place,
      required final String type,
      required final int count,
      required final String title,
      required final String titleAr,
      required final int index,
      required final int pages,
      required final List<SurahJuzModel> juz}) = _$SurahModelImpl;

  factory _SurahModel.fromJson(Map<String, dynamic> json) =
      _$SurahModelImpl.fromJson;

  @override
  String get place;
  @override
  String get type;
  @override
  int get count;
  @override
  String get title;
  @override
  String get titleAr;
  @override
  int get index;
  @override
  int get pages;
  @override
  List<SurahJuzModel> get juz;

  /// Create a copy of SurahModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahModelImplCopyWith<_$SurahModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurahJuzModel _$SurahJuzModelFromJson(Map<String, dynamic> json) {
  return _SurahJuzModel.fromJson(json);
}

/// @nodoc
mixin _$SurahJuzModel {
  int get index => throw _privateConstructorUsedError;
  SurahJuzVerseModel get verse => throw _privateConstructorUsedError;

  /// Serializes this SurahJuzModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahJuzModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahJuzModelCopyWith<SurahJuzModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahJuzModelCopyWith<$Res> {
  factory $SurahJuzModelCopyWith(
          SurahJuzModel value, $Res Function(SurahJuzModel) then) =
      _$SurahJuzModelCopyWithImpl<$Res, SurahJuzModel>;
  @useResult
  $Res call({int index, SurahJuzVerseModel verse});

  $SurahJuzVerseModelCopyWith<$Res> get verse;
}

/// @nodoc
class _$SurahJuzModelCopyWithImpl<$Res, $Val extends SurahJuzModel>
    implements $SurahJuzModelCopyWith<$Res> {
  _$SurahJuzModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahJuzModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? verse = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as SurahJuzVerseModel,
    ) as $Val);
  }

  /// Create a copy of SurahJuzModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahJuzVerseModelCopyWith<$Res> get verse {
    return $SurahJuzVerseModelCopyWith<$Res>(_value.verse, (value) {
      return _then(_value.copyWith(verse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SurahJuzModelImplCopyWith<$Res>
    implements $SurahJuzModelCopyWith<$Res> {
  factory _$$SurahJuzModelImplCopyWith(
          _$SurahJuzModelImpl value, $Res Function(_$SurahJuzModelImpl) then) =
      __$$SurahJuzModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, SurahJuzVerseModel verse});

  @override
  $SurahJuzVerseModelCopyWith<$Res> get verse;
}

/// @nodoc
class __$$SurahJuzModelImplCopyWithImpl<$Res>
    extends _$SurahJuzModelCopyWithImpl<$Res, _$SurahJuzModelImpl>
    implements _$$SurahJuzModelImplCopyWith<$Res> {
  __$$SurahJuzModelImplCopyWithImpl(
      _$SurahJuzModelImpl _value, $Res Function(_$SurahJuzModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahJuzModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? verse = null,
  }) {
    return _then(_$SurahJuzModelImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      verse: null == verse
          ? _value.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as SurahJuzVerseModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahJuzModelImpl implements _SurahJuzModel {
  const _$SurahJuzModelImpl({required this.index, required this.verse});

  factory _$SurahJuzModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahJuzModelImplFromJson(json);

  @override
  final int index;
  @override
  final SurahJuzVerseModel verse;

  @override
  String toString() {
    return 'SurahJuzModel(index: $index, verse: $verse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahJuzModelImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.verse, verse) || other.verse == verse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, verse);

  /// Create a copy of SurahJuzModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahJuzModelImplCopyWith<_$SurahJuzModelImpl> get copyWith =>
      __$$SurahJuzModelImplCopyWithImpl<_$SurahJuzModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahJuzModelImplToJson(
      this,
    );
  }
}

abstract class _SurahJuzModel implements SurahJuzModel {
  const factory _SurahJuzModel(
      {required final int index,
      required final SurahJuzVerseModel verse}) = _$SurahJuzModelImpl;

  factory _SurahJuzModel.fromJson(Map<String, dynamic> json) =
      _$SurahJuzModelImpl.fromJson;

  @override
  int get index;
  @override
  SurahJuzVerseModel get verse;

  /// Create a copy of SurahJuzModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahJuzModelImplCopyWith<_$SurahJuzModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SurahJuzVerseModel _$SurahJuzVerseModelFromJson(Map<String, dynamic> json) {
  return _SurahJuzVerseModel.fromJson(json);
}

/// @nodoc
mixin _$SurahJuzVerseModel {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;

  /// Serializes this SurahJuzVerseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SurahJuzVerseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SurahJuzVerseModelCopyWith<SurahJuzVerseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahJuzVerseModelCopyWith<$Res> {
  factory $SurahJuzVerseModelCopyWith(
          SurahJuzVerseModel value, $Res Function(SurahJuzVerseModel) then) =
      _$SurahJuzVerseModelCopyWithImpl<$Res, SurahJuzVerseModel>;
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class _$SurahJuzVerseModelCopyWithImpl<$Res, $Val extends SurahJuzVerseModel>
    implements $SurahJuzVerseModelCopyWith<$Res> {
  _$SurahJuzVerseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SurahJuzVerseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurahJuzVerseModelImplCopyWith<$Res>
    implements $SurahJuzVerseModelCopyWith<$Res> {
  factory _$$SurahJuzVerseModelImplCopyWith(_$SurahJuzVerseModelImpl value,
          $Res Function(_$SurahJuzVerseModelImpl) then) =
      __$$SurahJuzVerseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to});
}

/// @nodoc
class __$$SurahJuzVerseModelImplCopyWithImpl<$Res>
    extends _$SurahJuzVerseModelCopyWithImpl<$Res, _$SurahJuzVerseModelImpl>
    implements _$$SurahJuzVerseModelImplCopyWith<$Res> {
  __$$SurahJuzVerseModelImplCopyWithImpl(_$SurahJuzVerseModelImpl _value,
      $Res Function(_$SurahJuzVerseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SurahJuzVerseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$SurahJuzVerseModelImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurahJuzVerseModelImpl implements _SurahJuzVerseModel {
  const _$SurahJuzVerseModelImpl({required this.from, required this.to});

  factory _$SurahJuzVerseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurahJuzVerseModelImplFromJson(json);

  @override
  final String from;
  @override
  final String to;

  @override
  String toString() {
    return 'SurahJuzVerseModel(from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurahJuzVerseModelImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to);

  /// Create a copy of SurahJuzVerseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SurahJuzVerseModelImplCopyWith<_$SurahJuzVerseModelImpl> get copyWith =>
      __$$SurahJuzVerseModelImplCopyWithImpl<_$SurahJuzVerseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurahJuzVerseModelImplToJson(
      this,
    );
  }
}

abstract class _SurahJuzVerseModel implements SurahJuzVerseModel {
  const factory _SurahJuzVerseModel(
      {required final String from,
      required final String to}) = _$SurahJuzVerseModelImpl;

  factory _SurahJuzVerseModel.fromJson(Map<String, dynamic> json) =
      _$SurahJuzVerseModelImpl.fromJson;

  @override
  String get from;
  @override
  String get to;

  /// Create a copy of SurahJuzVerseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SurahJuzVerseModelImplCopyWith<_$SurahJuzVerseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
