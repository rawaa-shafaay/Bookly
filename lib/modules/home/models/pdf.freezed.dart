// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pdf {

 bool? get isAvailable; String? get acsTokenLink;
/// Create a copy of Pdf
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PdfCopyWith<Pdf> get copyWith => _$PdfCopyWithImpl<Pdf>(this as Pdf, _$identity);

  /// Serializes this Pdf to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pdf&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.acsTokenLink, acsTokenLink) || other.acsTokenLink == acsTokenLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isAvailable,acsTokenLink);

@override
String toString() {
  return 'Pdf(isAvailable: $isAvailable, acsTokenLink: $acsTokenLink)';
}


}

/// @nodoc
abstract mixin class $PdfCopyWith<$Res>  {
  factory $PdfCopyWith(Pdf value, $Res Function(Pdf) _then) = _$PdfCopyWithImpl;
@useResult
$Res call({
 bool? isAvailable, String? acsTokenLink
});




}
/// @nodoc
class _$PdfCopyWithImpl<$Res>
    implements $PdfCopyWith<$Res> {
  _$PdfCopyWithImpl(this._self, this._then);

  final Pdf _self;
  final $Res Function(Pdf) _then;

/// Create a copy of Pdf
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAvailable = freezed,Object? acsTokenLink = freezed,}) {
  return _then(_self.copyWith(
isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,acsTokenLink: freezed == acsTokenLink ? _self.acsTokenLink : acsTokenLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Pdf implements Pdf {
  const _Pdf({this.isAvailable, this.acsTokenLink});
  factory _Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);

@override final  bool? isAvailable;
@override final  String? acsTokenLink;

/// Create a copy of Pdf
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PdfCopyWith<_Pdf> get copyWith => __$PdfCopyWithImpl<_Pdf>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PdfToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pdf&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.acsTokenLink, acsTokenLink) || other.acsTokenLink == acsTokenLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isAvailable,acsTokenLink);

@override
String toString() {
  return 'Pdf(isAvailable: $isAvailable, acsTokenLink: $acsTokenLink)';
}


}

/// @nodoc
abstract mixin class _$PdfCopyWith<$Res> implements $PdfCopyWith<$Res> {
  factory _$PdfCopyWith(_Pdf value, $Res Function(_Pdf) _then) = __$PdfCopyWithImpl;
@override @useResult
$Res call({
 bool? isAvailable, String? acsTokenLink
});




}
/// @nodoc
class __$PdfCopyWithImpl<$Res>
    implements _$PdfCopyWith<$Res> {
  __$PdfCopyWithImpl(this._self, this._then);

  final _Pdf _self;
  final $Res Function(_Pdf) _then;

/// Create a copy of Pdf
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAvailable = freezed,Object? acsTokenLink = freezed,}) {
  return _then(_Pdf(
isAvailable: freezed == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool?,acsTokenLink: freezed == acsTokenLink ? _self.acsTokenLink : acsTokenLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
