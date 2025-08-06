import 'package:freezed_annotation/freezed_annotation.dart';
import 'image_links.dart';

part 'volume_info.freezed.dart';
part 'volume_info.g.dart';

@freezed
abstract class VolumeInfo with _$VolumeInfo {
  const factory VolumeInfo({
    String? title,
    List<String>? authors,
    String? description,
    double? averageRating,
    int? ratingsCount,
    ImageLinks? imageLinks,
    String? previewLink,
    List<String>? categories,
  }) = _VolumeInfo;

  factory VolumeInfo.fromJson(Map<String, dynamic> json) =>
      _$VolumeInfoFromJson(json);
}
