// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'juz_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JuzModelImpl _$$JuzModelImplFromJson(Map<String, dynamic> json) =>
    _$JuzModelImpl(
      id: (json['id'] as num).toInt(),
      start: JuzPointModel.fromJson(json['start'] as Map<String, dynamic>),
      end: JuzPointModel.fromJson(json['end'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$JuzModelImplToJson(_$JuzModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start': instance.start,
      'end': instance.end,
    };

_$JuzPointModelImpl _$$JuzPointModelImplFromJson(Map<String, dynamic> json) =>
    _$JuzPointModelImpl(
      sura: (json['sura'] as num).toInt(),
      verse: json['verse'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$JuzPointModelImplToJson(_$JuzPointModelImpl instance) =>
    <String, dynamic>{
      'sura': instance.sura,
      'verse': instance.verse,
      'name': instance.name,
    };
