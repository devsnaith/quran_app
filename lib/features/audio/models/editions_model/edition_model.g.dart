// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditionModelImpl _$$EditionModelImplFromJson(Map<String, dynamic> json) =>
    _$EditionModelImpl(
      identifier: json['identifier'] as String,
      language: json['language'] as String,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      format: json['format'] as String,
      type: json['type'] as String,
      bitrate: json['bitrate'] as String,
    );

Map<String, dynamic> _$$EditionModelImplToJson(_$EditionModelImpl instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
      'bitrate': instance.bitrate,
    };
