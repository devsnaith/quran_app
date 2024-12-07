import 'package:freezed_annotation/freezed_annotation.dart';

part 'juz_model.freezed.dart';
part 'juz_model.g.dart';

@freezed
class JuzModel with _$JuzModel {
  const factory JuzModel({
    required int id,
    required JuzPointModel start,
    required JuzPointModel end,
  }) = _JuzModel;

  factory JuzModel.fromJson(Map<String, Object?> json) => _$JuzModelFromJson(json);
}

@freezed
class JuzPointModel with _$JuzPointModel {
  const factory JuzPointModel({
    required int sura,
    required String verse,
    required String name,
  }) = _JuzPointModel;

  factory JuzPointModel.fromJson(Map<String, Object?> json) => _$JuzPointModelFromJson(json);
}