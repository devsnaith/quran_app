import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
class SurahModel with _$SurahModel {
  const factory SurahModel({
    required String place,
    required String type,
    required int count,
    required String title,
    required String titleAr,
    required int index,
    required int pages,
    required List<SurahJuzModel> juz,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, Object?> json) => _$SurahModelFromJson(json);
}

@freezed
class SurahJuzModel with _$SurahJuzModel {
  const factory SurahJuzModel({
    required int index,
    required SurahJuzVerseModel verse,
  }) = _SurahJuzModel;

  factory SurahJuzModel.fromJson(Map<String, Object?> json) => _$SurahJuzModelFromJson(json);
}

@freezed
class SurahJuzVerseModel with _$SurahJuzVerseModel {
  const factory SurahJuzVerseModel({
    required String start,
    required String end,
  }) = _SurahJuzVerseModel;

  factory SurahJuzVerseModel.fromJson(Map<String, Object?> json) => _$SurahJuzVerseModelFromJson(json);
}