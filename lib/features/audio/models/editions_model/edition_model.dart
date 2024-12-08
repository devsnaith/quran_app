import 'package:freezed_annotation/freezed_annotation.dart';

part 'edition_model.freezed.dart';
part 'edition_model.g.dart';

@freezed
class EditionModel with _$EditionModel{
  const factory EditionModel({
    required String identifier,
    required String language,
    required String name,
    required String englishName,
    required String format,
    required String type,
    required String bitrate,
  }) = _EditionModel;
  factory EditionModel.fromJson(Map<String, Object?> json) => _$EditionModelFromJson(json);
}