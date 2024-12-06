// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahModelImpl _$$SurahModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahModelImpl(
      place: json['place'] as String,
      type: json['type'] as String,
      count: (json['count'] as num).toInt(),
      title: json['title'] as String,
      titleAr: json['titleAr'] as String,
      index: (json['index'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      juz: (json['juz'] as List<dynamic>)
          .map((e) => SurahJuzModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahModelImplToJson(_$SurahModelImpl instance) =>
    <String, dynamic>{
      'place': instance.place,
      'type': instance.type,
      'count': instance.count,
      'title': instance.title,
      'titleAr': instance.titleAr,
      'index': instance.index,
      'pages': instance.pages,
      'juz': instance.juz,
    };

_$SurahJuzModelImpl _$$SurahJuzModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahJuzModelImpl(
      index: (json['index'] as num).toInt(),
      verse: SurahJuzVerseModel.fromJson(json['verse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SurahJuzModelImplToJson(_$SurahJuzModelImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'verse': instance.verse,
    };

_$SurahJuzVerseModelImpl _$$SurahJuzVerseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SurahJuzVerseModelImpl(
      from: json['start'] as String,
      to: json['end'] as String,
    );

Map<String, dynamic> _$$SurahJuzVerseModelImplToJson(
        _$SurahJuzVerseModelImpl instance) =>
    <String, dynamic>{
      'start': instance.from,
      'end': instance.to,
    };
