// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccessInfo {

 String? get country; String? get viewability; bool? get embeddable; bool? get publicDomain; String? get textToSpeechPermission; Pdf? get pdf; Epub? get epub; String? get webReaderLink; String? get accessViewStatus; bool? get quoteSharingAllowed;
/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessInfoCopyWith<AccessInfo> get copyWith => _$AccessInfoCopyWithImpl<AccessInfo>(this as AccessInfo, _$identity);

  /// Serializes this AccessInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessInfo&&(identical(other.country, country) || other.country == country)&&(identical(other.viewability, viewability) || other.viewability == viewability)&&(identical(other.embeddable, embeddable) || other.embeddable == embeddable)&&(identical(other.publicDomain, publicDomain) || other.publicDomain == publicDomain)&&(identical(other.textToSpeechPermission, textToSpeechPermission) || other.textToSpeechPermission == textToSpeechPermission)&&(identical(other.pdf, pdf) || other.pdf == pdf)&&(identical(other.epub, epub) || other.epub == epub)&&(identical(other.webReaderLink, webReaderLink) || other.webReaderLink == webReaderLink)&&(identical(other.accessViewStatus, accessViewStatus) || other.accessViewStatus == accessViewStatus)&&(identical(other.quoteSharingAllowed, quoteSharingAllowed) || other.quoteSharingAllowed == quoteSharingAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,viewability,embeddable,publicDomain,textToSpeechPermission,pdf,epub,webReaderLink,accessViewStatus,quoteSharingAllowed);

@override
String toString() {
  return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, pdf: $pdf, epub: $epub, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
}


}

/// @nodoc
abstract mixin class $AccessInfoCopyWith<$Res>  {
  factory $AccessInfoCopyWith(AccessInfo value, $Res Function(AccessInfo) _then) = _$AccessInfoCopyWithImpl;
@useResult
$Res call({
 String? country, String? viewability, bool? embeddable, bool? publicDomain, String? textToSpeechPermission, Pdf? pdf, Epub? epub, String? webReaderLink, String? accessViewStatus, bool? quoteSharingAllowed
});


$PdfCopyWith<$Res>? get pdf;$EpubCopyWith<$Res>? get epub;

}
/// @nodoc
class _$AccessInfoCopyWithImpl<$Res>
    implements $AccessInfoCopyWith<$Res> {
  _$AccessInfoCopyWithImpl(this._self, this._then);

  final AccessInfo _self;
  final $Res Function(AccessInfo) _then;

/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? viewability = freezed,Object? embeddable = freezed,Object? publicDomain = freezed,Object? textToSpeechPermission = freezed,Object? pdf = freezed,Object? epub = freezed,Object? webReaderLink = freezed,Object? accessViewStatus = freezed,Object? quoteSharingAllowed = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,viewability: freezed == viewability ? _self.viewability : viewability // ignore: cast_nullable_to_non_nullable
as String?,embeddable: freezed == embeddable ? _self.embeddable : embeddable // ignore: cast_nullable_to_non_nullable
as bool?,publicDomain: freezed == publicDomain ? _self.publicDomain : publicDomain // ignore: cast_nullable_to_non_nullable
as bool?,textToSpeechPermission: freezed == textToSpeechPermission ? _self.textToSpeechPermission : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
as String?,pdf: freezed == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as Pdf?,epub: freezed == epub ? _self.epub : epub // ignore: cast_nullable_to_non_nullable
as Epub?,webReaderLink: freezed == webReaderLink ? _self.webReaderLink : webReaderLink // ignore: cast_nullable_to_non_nullable
as String?,accessViewStatus: freezed == accessViewStatus ? _self.accessViewStatus : accessViewStatus // ignore: cast_nullable_to_non_nullable
as String?,quoteSharingAllowed: freezed == quoteSharingAllowed ? _self.quoteSharingAllowed : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PdfCopyWith<$Res>? get pdf {
    if (_self.pdf == null) {
    return null;
  }

  return $PdfCopyWith<$Res>(_self.pdf!, (value) {
    return _then(_self.copyWith(pdf: value));
  });
}/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpubCopyWith<$Res>? get epub {
    if (_self.epub == null) {
    return null;
  }

  return $EpubCopyWith<$Res>(_self.epub!, (value) {
    return _then(_self.copyWith(epub: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AccessInfo implements AccessInfo {
  const _AccessInfo({this.country, this.viewability, this.embeddable, this.publicDomain, this.textToSpeechPermission, this.pdf, this.epub, this.webReaderLink, this.accessViewStatus, this.quoteSharingAllowed});
  factory _AccessInfo.fromJson(Map<String, dynamic> json) => _$AccessInfoFromJson(json);

@override final  String? country;
@override final  String? viewability;
@override final  bool? embeddable;
@override final  bool? publicDomain;
@override final  String? textToSpeechPermission;
@override final  Pdf? pdf;
@override final  Epub? epub;
@override final  String? webReaderLink;
@override final  String? accessViewStatus;
@override final  bool? quoteSharingAllowed;

/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessInfoCopyWith<_AccessInfo> get copyWith => __$AccessInfoCopyWithImpl<_AccessInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccessInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessInfo&&(identical(other.country, country) || other.country == country)&&(identical(other.viewability, viewability) || other.viewability == viewability)&&(identical(other.embeddable, embeddable) || other.embeddable == embeddable)&&(identical(other.publicDomain, publicDomain) || other.publicDomain == publicDomain)&&(identical(other.textToSpeechPermission, textToSpeechPermission) || other.textToSpeechPermission == textToSpeechPermission)&&(identical(other.pdf, pdf) || other.pdf == pdf)&&(identical(other.epub, epub) || other.epub == epub)&&(identical(other.webReaderLink, webReaderLink) || other.webReaderLink == webReaderLink)&&(identical(other.accessViewStatus, accessViewStatus) || other.accessViewStatus == accessViewStatus)&&(identical(other.quoteSharingAllowed, quoteSharingAllowed) || other.quoteSharingAllowed == quoteSharingAllowed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,viewability,embeddable,publicDomain,textToSpeechPermission,pdf,epub,webReaderLink,accessViewStatus,quoteSharingAllowed);

@override
String toString() {
  return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, pdf: $pdf, epub: $epub, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
}


}

/// @nodoc
abstract mixin class _$AccessInfoCopyWith<$Res> implements $AccessInfoCopyWith<$Res> {
  factory _$AccessInfoCopyWith(_AccessInfo value, $Res Function(_AccessInfo) _then) = __$AccessInfoCopyWithImpl;
@override @useResult
$Res call({
 String? country, String? viewability, bool? embeddable, bool? publicDomain, String? textToSpeechPermission, Pdf? pdf, Epub? epub, String? webReaderLink, String? accessViewStatus, bool? quoteSharingAllowed
});


@override $PdfCopyWith<$Res>? get pdf;@override $EpubCopyWith<$Res>? get epub;

}
/// @nodoc
class __$AccessInfoCopyWithImpl<$Res>
    implements _$AccessInfoCopyWith<$Res> {
  __$AccessInfoCopyWithImpl(this._self, this._then);

  final _AccessInfo _self;
  final $Res Function(_AccessInfo) _then;

/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? viewability = freezed,Object? embeddable = freezed,Object? publicDomain = freezed,Object? textToSpeechPermission = freezed,Object? pdf = freezed,Object? epub = freezed,Object? webReaderLink = freezed,Object? accessViewStatus = freezed,Object? quoteSharingAllowed = freezed,}) {
  return _then(_AccessInfo(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,viewability: freezed == viewability ? _self.viewability : viewability // ignore: cast_nullable_to_non_nullable
as String?,embeddable: freezed == embeddable ? _self.embeddable : embeddable // ignore: cast_nullable_to_non_nullable
as bool?,publicDomain: freezed == publicDomain ? _self.publicDomain : publicDomain // ignore: cast_nullable_to_non_nullable
as bool?,textToSpeechPermission: freezed == textToSpeechPermission ? _self.textToSpeechPermission : textToSpeechPermission // ignore: cast_nullable_to_non_nullable
as String?,pdf: freezed == pdf ? _self.pdf : pdf // ignore: cast_nullable_to_non_nullable
as Pdf?,epub: freezed == epub ? _self.epub : epub // ignore: cast_nullable_to_non_nullable
as Epub?,webReaderLink: freezed == webReaderLink ? _self.webReaderLink : webReaderLink // ignore: cast_nullable_to_non_nullable
as String?,accessViewStatus: freezed == accessViewStatus ? _self.accessViewStatus : accessViewStatus // ignore: cast_nullable_to_non_nullable
as String?,quoteSharingAllowed: freezed == quoteSharingAllowed ? _self.quoteSharingAllowed : quoteSharingAllowed // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PdfCopyWith<$Res>? get pdf {
    if (_self.pdf == null) {
    return null;
  }

  return $PdfCopyWith<$Res>(_self.pdf!, (value) {
    return _then(_self.copyWith(pdf: value));
  });
}/// Create a copy of AccessInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EpubCopyWith<$Res>? get epub {
    if (_self.epub == null) {
    return null;
  }

  return $EpubCopyWith<$Res>(_self.epub!, (value) {
    return _then(_self.copyWith(epub: value));
  });
}
}

// dart format on
