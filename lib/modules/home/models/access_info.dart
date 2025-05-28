import 'package:freezed_annotation/freezed_annotation.dart';
import 'pdf.dart';
import 'epub.dart';

part 'access_info.freezed.dart';
part 'access_info.g.dart';

@freezed
abstract class AccessInfo with _$AccessInfo {
  const factory AccessInfo({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Pdf? pdf,
    Epub? epub,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) = _AccessInfo;

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
}
