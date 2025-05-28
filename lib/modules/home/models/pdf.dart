import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf.freezed.dart';
part 'pdf.g.dart';

@freezed
abstract class Pdf with _$Pdf {
  const factory Pdf({bool? isAvailable, String? acsTokenLink}) = _Pdf;

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);
}
