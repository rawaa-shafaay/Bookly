import 'package:freezed_annotation/freezed_annotation.dart';

part 'panelization_summary.freezed.dart';
part 'panelization_summary.g.dart';

@freezed
abstract class PanelizationSummary with _$PanelizationSummary {
  const factory PanelizationSummary({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) = _PanelizationSummary;

  factory PanelizationSummary.fromJson(Map<String, dynamic> json) =>
      _$PanelizationSummaryFromJson(json);
}
