// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retail_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RetailPrice {

 double? get amount; String? get currencyCode;
/// Create a copy of RetailPrice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetailPriceCopyWith<RetailPrice> get copyWith => _$RetailPriceCopyWithImpl<RetailPrice>(this as RetailPrice, _$identity);

  /// Serializes this RetailPrice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetailPrice&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString() {
  return 'RetailPrice(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class $RetailPriceCopyWith<$Res>  {
  factory $RetailPriceCopyWith(RetailPrice value, $Res Function(RetailPrice) _then) = _$RetailPriceCopyWithImpl;
@useResult
$Res call({
 double? amount, String? currencyCode
});




}
/// @nodoc
class _$RetailPriceCopyWithImpl<$Res>
    implements $RetailPriceCopyWith<$Res> {
  _$RetailPriceCopyWithImpl(this._self, this._then);

  final RetailPrice _self;
  final $Res Function(RetailPrice) _then;

/// Create a copy of RetailPrice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? currencyCode = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RetailPrice implements RetailPrice {
  const _RetailPrice({this.amount, this.currencyCode});
  factory _RetailPrice.fromJson(Map<String, dynamic> json) => _$RetailPriceFromJson(json);

@override final  double? amount;
@override final  String? currencyCode;

/// Create a copy of RetailPrice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetailPriceCopyWith<_RetailPrice> get copyWith => __$RetailPriceCopyWithImpl<_RetailPrice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RetailPriceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetailPrice&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString() {
  return 'RetailPrice(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class _$RetailPriceCopyWith<$Res> implements $RetailPriceCopyWith<$Res> {
  factory _$RetailPriceCopyWith(_RetailPrice value, $Res Function(_RetailPrice) _then) = __$RetailPriceCopyWithImpl;
@override @useResult
$Res call({
 double? amount, String? currencyCode
});




}
/// @nodoc
class __$RetailPriceCopyWithImpl<$Res>
    implements _$RetailPriceCopyWith<$Res> {
  __$RetailPriceCopyWithImpl(this._self, this._then);

  final _RetailPrice _self;
  final $Res Function(_RetailPrice) _then;

/// Create a copy of RetailPrice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? currencyCode = freezed,}) {
  return _then(_RetailPrice(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
