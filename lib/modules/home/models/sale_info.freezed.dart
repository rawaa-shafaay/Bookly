// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleInfo {

 String? get country; String? get saleability; bool? get isEbook; RetailPrice? get retailPrice;
/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleInfoCopyWith<SaleInfo> get copyWith => _$SaleInfoCopyWithImpl<SaleInfo>(this as SaleInfo, _$identity);

  /// Serializes this SaleInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleInfo&&(identical(other.country, country) || other.country == country)&&(identical(other.saleability, saleability) || other.saleability == saleability)&&(identical(other.isEbook, isEbook) || other.isEbook == isEbook)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,saleability,isEbook,retailPrice);

@override
String toString() {
  return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook, retailPrice: $retailPrice)';
}


}

/// @nodoc
abstract mixin class $SaleInfoCopyWith<$Res>  {
  factory $SaleInfoCopyWith(SaleInfo value, $Res Function(SaleInfo) _then) = _$SaleInfoCopyWithImpl;
@useResult
$Res call({
 String? country, String? saleability, bool? isEbook, RetailPrice? retailPrice
});


$RetailPriceCopyWith<$Res>? get retailPrice;

}
/// @nodoc
class _$SaleInfoCopyWithImpl<$Res>
    implements $SaleInfoCopyWith<$Res> {
  _$SaleInfoCopyWithImpl(this._self, this._then);

  final SaleInfo _self;
  final $Res Function(SaleInfo) _then;

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country = freezed,Object? saleability = freezed,Object? isEbook = freezed,Object? retailPrice = freezed,}) {
  return _then(_self.copyWith(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,saleability: freezed == saleability ? _self.saleability : saleability // ignore: cast_nullable_to_non_nullable
as String?,isEbook: freezed == isEbook ? _self.isEbook : isEbook // ignore: cast_nullable_to_non_nullable
as bool?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as RetailPrice?,
  ));
}
/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RetailPriceCopyWith<$Res>? get retailPrice {
    if (_self.retailPrice == null) {
    return null;
  }

  return $RetailPriceCopyWith<$Res>(_self.retailPrice!, (value) {
    return _then(_self.copyWith(retailPrice: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SaleInfo implements SaleInfo {
  const _SaleInfo({this.country, this.saleability, this.isEbook, this.retailPrice});
  factory _SaleInfo.fromJson(Map<String, dynamic> json) => _$SaleInfoFromJson(json);

@override final  String? country;
@override final  String? saleability;
@override final  bool? isEbook;
@override final  RetailPrice? retailPrice;

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleInfoCopyWith<_SaleInfo> get copyWith => __$SaleInfoCopyWithImpl<_SaleInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaleInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleInfo&&(identical(other.country, country) || other.country == country)&&(identical(other.saleability, saleability) || other.saleability == saleability)&&(identical(other.isEbook, isEbook) || other.isEbook == isEbook)&&(identical(other.retailPrice, retailPrice) || other.retailPrice == retailPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country,saleability,isEbook,retailPrice);

@override
String toString() {
  return 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook, retailPrice: $retailPrice)';
}


}

/// @nodoc
abstract mixin class _$SaleInfoCopyWith<$Res> implements $SaleInfoCopyWith<$Res> {
  factory _$SaleInfoCopyWith(_SaleInfo value, $Res Function(_SaleInfo) _then) = __$SaleInfoCopyWithImpl;
@override @useResult
$Res call({
 String? country, String? saleability, bool? isEbook, RetailPrice? retailPrice
});


@override $RetailPriceCopyWith<$Res>? get retailPrice;

}
/// @nodoc
class __$SaleInfoCopyWithImpl<$Res>
    implements _$SaleInfoCopyWith<$Res> {
  __$SaleInfoCopyWithImpl(this._self, this._then);

  final _SaleInfo _self;
  final $Res Function(_SaleInfo) _then;

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country = freezed,Object? saleability = freezed,Object? isEbook = freezed,Object? retailPrice = freezed,}) {
  return _then(_SaleInfo(
country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,saleability: freezed == saleability ? _self.saleability : saleability // ignore: cast_nullable_to_non_nullable
as String?,isEbook: freezed == isEbook ? _self.isEbook : isEbook // ignore: cast_nullable_to_non_nullable
as bool?,retailPrice: freezed == retailPrice ? _self.retailPrice : retailPrice // ignore: cast_nullable_to_non_nullable
as RetailPrice?,
  ));
}

/// Create a copy of SaleInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RetailPriceCopyWith<$Res>? get retailPrice {
    if (_self.retailPrice == null) {
    return null;
  }

  return $RetailPriceCopyWith<$Res>(_self.retailPrice!, (value) {
    return _then(_self.copyWith(retailPrice: value));
  });
}
}

// dart format on
