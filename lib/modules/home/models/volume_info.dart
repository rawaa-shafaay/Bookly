import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'reading_modes.dart';
import 'panelization_summary.dart';

part 'volume_info.freezed.dart';
part 'volume_info.g.dart';

@freezed
abstract class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifier>? industryIdentifiers,
    ReadingModes? readingModes,
    int? pageCount,
    String? printType,
    List<String>? categories,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
    double? averageRating,
    int? ratingsCount,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}
